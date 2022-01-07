
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_private {int capabilities; TYPE_1__* ldu_priv; int active_display_unit; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int * fb; scalar_t__ last_num_active; scalar_t__ num_active; int active; } ;


 int DRM_INFO (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SVGA_CAP_MULTIMON ;
 int VMWGFX_NUM_DISPLAY_UNITS ;
 int drm_vblank_init (struct drm_device*,int) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 int vmw_du_legacy ;
 int vmw_kms_create_implicit_placement_property (struct vmw_private*) ;
 int vmw_ldu_init (struct vmw_private*,int) ;

int vmw_kms_ldu_init_display(struct vmw_private *dev_priv)
{
 struct drm_device *dev = dev_priv->dev;
 int i, ret;

 if (dev_priv->ldu_priv) {
  DRM_INFO("ldu system already on\n");
  return -EINVAL;
 }

 dev_priv->ldu_priv = kmalloc(sizeof(*dev_priv->ldu_priv), GFP_KERNEL);
 if (!dev_priv->ldu_priv)
  return -ENOMEM;

 INIT_LIST_HEAD(&dev_priv->ldu_priv->active);
 dev_priv->ldu_priv->num_active = 0;
 dev_priv->ldu_priv->last_num_active = 0;
 dev_priv->ldu_priv->fb = ((void*)0);


 if (dev_priv->capabilities & SVGA_CAP_MULTIMON)
  ret = drm_vblank_init(dev, VMWGFX_NUM_DISPLAY_UNITS);
 else
  ret = drm_vblank_init(dev, 1);
 if (ret != 0)
  goto err_free;

 vmw_kms_create_implicit_placement_property(dev_priv);

 if (dev_priv->capabilities & SVGA_CAP_MULTIMON)
  for (i = 0; i < VMWGFX_NUM_DISPLAY_UNITS; ++i)
   vmw_ldu_init(dev_priv, i);
 else
  vmw_ldu_init(dev_priv, 0);

 dev_priv->active_display_unit = vmw_du_legacy;

 DRM_INFO("Legacy Display Unit initialized\n");

 return 0;

err_free:
 kfree(dev_priv->ldu_priv);
 dev_priv->ldu_priv = ((void*)0);
 return ret;
}
