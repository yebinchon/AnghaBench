
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int high_gm_node; int low_gm_node; } ;
struct intel_vgpu {TYPE_2__ gm; TYPE_1__* gvt; } ;
struct TYPE_6__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_4__ {struct drm_i915_private* dev_priv; } ;


 int drm_mm_remove_node (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void free_vgpu_gm(struct intel_vgpu *vgpu)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 mutex_lock(&dev_priv->drm.struct_mutex);
 drm_mm_remove_node(&vgpu->gm.low_gm_node);
 drm_mm_remove_node(&vgpu->gm.high_gm_node);
 mutex_unlock(&dev_priv->drm.struct_mutex);
}
