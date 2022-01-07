
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int low_gm_node; } ;
struct intel_vgpu {TYPE_1__ gm; int id; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;


 int alloc_gm (struct intel_vgpu*,int) ;
 int drm_mm_remove_node (int *) ;
 int gvt_dbg_core (char*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgpu_aperture_offset (struct intel_vgpu*) ;
 int vgpu_aperture_sz (struct intel_vgpu*) ;
 int vgpu_hidden_offset (struct intel_vgpu*) ;
 int vgpu_hidden_sz (struct intel_vgpu*) ;

__attribute__((used)) static int alloc_vgpu_gm(struct intel_vgpu *vgpu)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct drm_i915_private *dev_priv = gvt->dev_priv;
 int ret;

 ret = alloc_gm(vgpu, 0);
 if (ret)
  return ret;

 ret = alloc_gm(vgpu, 1);
 if (ret)
  goto out_free_aperture;

 gvt_dbg_core("vgpu%d: alloc low GM start %llx size %llx\n", vgpu->id,
       vgpu_aperture_offset(vgpu), vgpu_aperture_sz(vgpu));

 gvt_dbg_core("vgpu%d: alloc high GM start %llx size %llx\n", vgpu->id,
       vgpu_hidden_offset(vgpu), vgpu_hidden_sz(vgpu));

 return 0;
out_free_aperture:
 mutex_lock(&dev_priv->drm.struct_mutex);
 drm_mm_remove_node(&vgpu->gm.low_gm_node);
 mutex_unlock(&dev_priv->drm.struct_mutex);
 return ret;
}
