
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct psb_intel_mode_device {int dummy; } ;
struct drm_psb_private {int num_pipe; int modeset; TYPE_2__* ops; struct psb_intel_mode_device mode_dev; } ;
struct TYPE_3__ {int max_width; int max_height; int fb_base; int * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; int pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int (* errata ) (struct drm_device*) ;} ;


 int PSB_BSM ;
 int drm_mode_config_init (struct drm_device*) ;
 int pci_read_config_dword (int ,int ,int *) ;
 int psb_intel_crtc_init (struct drm_device*,int,struct psb_intel_mode_device*) ;
 int psb_mode_funcs ;
 int psb_setup_outputs (struct drm_device*) ;
 int stub1 (struct drm_device*) ;

void psb_modeset_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;
 int i;

 drm_mode_config_init(dev);

 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;

 dev->mode_config.funcs = &psb_mode_funcs;



 pci_read_config_dword(dev->pdev, PSB_BSM, (u32 *)
     &(dev->mode_config.fb_base));


 for (i = 0; i < dev_priv->num_pipe; i++)
  psb_intel_crtc_init(dev, i, mode_dev);

 dev->mode_config.max_width = 4096;
 dev->mode_config.max_height = 4096;

 psb_setup_outputs(dev);

 if (dev_priv->ops->errata)
         dev_priv->ops->errata(dev);

        dev_priv->modeset = 1;
}
