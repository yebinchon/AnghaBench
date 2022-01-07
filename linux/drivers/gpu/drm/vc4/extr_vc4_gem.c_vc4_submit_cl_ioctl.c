
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct vc4_file {int dummy; } ;
struct vc4_exec_info {struct drm_vc4_submit_cl* args; scalar_t__ ct0ea; scalar_t__ ct0ca; int perfmon; int unref_list; } ;
struct vc4_dev {int dev; int emit_seqno; int dma_fence_context; int v3d; } ;
struct drm_vc4_submit_cl {int flags; int pad2; scalar_t__ bin_cl_size; int seqno; scalar_t__ out_sync; scalar_t__ in_sync; scalar_t__ perfmonid; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VC4_SUBMIT_CL_FIXED_RCL_ORDER ;
 int VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X ;
 int VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y ;
 int VC4_SUBMIT_CL_USE_CLEAR_COLOR ;
 int dma_fence_match_context (struct dma_fence*,int ) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 struct drm_syncobj* drm_syncobj_find (struct drm_file*,scalar_t__) ;
 int drm_syncobj_find_fence (struct drm_file*,scalar_t__,int ,int ,struct dma_fence**) ;
 int drm_syncobj_put (struct drm_syncobj*) ;
 struct vc4_exec_info* kcalloc (int,int,int ) ;
 int kfree (struct vc4_exec_info*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_cl_lookup_bos (struct drm_device*,struct drm_file*,struct vc4_exec_info*) ;
 int vc4_complete_exec (int ,struct vc4_exec_info*) ;
 int vc4_get_bcl (struct drm_device*,struct vc4_exec_info*) ;
 int vc4_get_rcl (struct drm_device*,struct vc4_exec_info*) ;
 int vc4_lock_bo_reservations (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*) ;
 int vc4_perfmon_find (struct vc4_file*,scalar_t__) ;
 int vc4_queue_submit (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*,struct drm_syncobj*) ;
 int vc4_v3d_pm_get (struct vc4_dev*) ;

int
vc4_submit_cl_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_file *vc4file = file_priv->driver_priv;
 struct drm_vc4_submit_cl *args = data;
 struct drm_syncobj *out_sync = ((void*)0);
 struct vc4_exec_info *exec;
 struct ww_acquire_ctx acquire_ctx;
 struct dma_fence *in_fence;
 int ret = 0;

 if (!vc4->v3d) {
  DRM_DEBUG("VC4_SUBMIT_CL with no VC4 V3D probed\n");
  return -ENODEV;
 }

 if ((args->flags & ~(VC4_SUBMIT_CL_USE_CLEAR_COLOR |
        VC4_SUBMIT_CL_FIXED_RCL_ORDER |
        VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X |
        VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y)) != 0) {
  DRM_DEBUG("Unknown flags: 0x%02x\n", args->flags);
  return -EINVAL;
 }

 if (args->pad2 != 0) {
  DRM_DEBUG("Invalid pad: 0x%08x\n", args->pad2);
  return -EINVAL;
 }

 exec = kcalloc(1, sizeof(*exec), GFP_KERNEL);
 if (!exec) {
  DRM_ERROR("malloc failure on exec struct\n");
  return -ENOMEM;
 }

 ret = vc4_v3d_pm_get(vc4);
 if (ret) {
  kfree(exec);
  return ret;
 }

 exec->args = args;
 INIT_LIST_HEAD(&exec->unref_list);

 ret = vc4_cl_lookup_bos(dev, file_priv, exec);
 if (ret)
  goto fail;

 if (args->perfmonid) {
  exec->perfmon = vc4_perfmon_find(vc4file,
       args->perfmonid);
  if (!exec->perfmon) {
   ret = -ENOENT;
   goto fail;
  }
 }

 if (args->in_sync) {
  ret = drm_syncobj_find_fence(file_priv, args->in_sync,
          0, 0, &in_fence);
  if (ret)
   goto fail;






  if (!dma_fence_match_context(in_fence,
          vc4->dma_fence_context)) {
   ret = dma_fence_wait(in_fence, 1);
   if (ret) {
    dma_fence_put(in_fence);
    goto fail;
   }
  }

  dma_fence_put(in_fence);
 }

 if (exec->args->bin_cl_size != 0) {
  ret = vc4_get_bcl(dev, exec);
  if (ret)
   goto fail;
 } else {
  exec->ct0ca = 0;
  exec->ct0ea = 0;
 }

 ret = vc4_get_rcl(dev, exec);
 if (ret)
  goto fail;

 ret = vc4_lock_bo_reservations(dev, exec, &acquire_ctx);
 if (ret)
  goto fail;

 if (args->out_sync) {
  out_sync = drm_syncobj_find(file_priv, args->out_sync);
  if (!out_sync) {
   ret = -EINVAL;
   goto fail;
  }






 }




 exec->args = ((void*)0);

 ret = vc4_queue_submit(dev, exec, &acquire_ctx, out_sync);




 if (out_sync)
  drm_syncobj_put(out_sync);

 if (ret)
  goto fail;


 args->seqno = vc4->emit_seqno;

 return 0;

fail:
 vc4_complete_exec(vc4->dev, exec);

 return ret;
}
