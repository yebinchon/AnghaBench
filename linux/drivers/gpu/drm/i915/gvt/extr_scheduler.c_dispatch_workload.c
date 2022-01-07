
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_workload {int ring_id; int dispatched; int status; struct intel_vgpu_workload* req; int wa_ctx; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int vgpu_lock; TYPE_1__* gvt; } ;
struct i915_request {int dummy; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_3__ {struct drm_i915_private* dev_priv; } ;


 int IS_ERR_OR_NULL (struct intel_vgpu_workload*) ;
 struct i915_request* fetch_and_zero (struct intel_vgpu_workload**) ;
 int gvt_dbg_sched (char*,int,struct intel_vgpu_workload*) ;
 int i915_request_add (struct intel_vgpu_workload*) ;
 int i915_request_put (struct i915_request*) ;
 int intel_gvt_scan_and_shadow_workload (struct intel_vgpu_workload*) ;
 int intel_gvt_workload_req_alloc (struct intel_vgpu_workload*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int populate_shadow_context (struct intel_vgpu_workload*) ;
 int prepare_workload (struct intel_vgpu_workload*) ;
 int release_shadow_wa_ctx (int *) ;

__attribute__((used)) static int dispatch_workload(struct intel_vgpu_workload *workload)
{
 struct intel_vgpu *vgpu = workload->vgpu;
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 struct i915_request *rq;
 int ring_id = workload->ring_id;
 int ret;

 gvt_dbg_sched("ring id %d prepare to dispatch workload %p\n",
  ring_id, workload);

 mutex_lock(&vgpu->vgpu_lock);
 mutex_lock(&dev_priv->drm.struct_mutex);

 ret = intel_gvt_workload_req_alloc(workload);
 if (ret)
  goto err_req;

 ret = intel_gvt_scan_and_shadow_workload(workload);
 if (ret)
  goto out;

 ret = populate_shadow_context(workload);
 if (ret) {
  release_shadow_wa_ctx(&workload->wa_ctx);
  goto out;
 }

 ret = prepare_workload(workload);
out:
 if (ret) {



  rq = fetch_and_zero(&workload->req);
  i915_request_put(rq);
 }

 if (!IS_ERR_OR_NULL(workload->req)) {
  gvt_dbg_sched("ring id %d submit workload to i915 %p\n",
    ring_id, workload->req);
  i915_request_add(workload->req);
  workload->dispatched = 1;
 }
err_req:
 if (ret)
  workload->status = ret;
 mutex_unlock(&dev_priv->drm.struct_mutex);
 mutex_unlock(&vgpu->vgpu_lock);
 return ret;
}
