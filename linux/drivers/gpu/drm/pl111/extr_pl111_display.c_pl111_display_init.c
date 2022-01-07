
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pl111_drm_dev_private {int connector; TYPE_1__* variant; int pipe; } ;
struct drm_device {struct pl111_drm_dev_private* dev_private; } ;
struct TYPE_5__ {int disable_vblank; int enable_vblank; } ;
struct TYPE_4__ {int nformats; int formats; int broken_vblank; } ;


 int drm_simple_display_pipe_init (struct drm_device*,int *,TYPE_2__*,int ,int ,int *,int ) ;
 int pl111_display_disable_vblank ;
 int pl111_display_enable_vblank ;
 TYPE_2__ pl111_display_funcs ;
 int pl111_init_clock_divider (struct drm_device*) ;

int pl111_display_init(struct drm_device *drm)
{
 struct pl111_drm_dev_private *priv = drm->dev_private;
 int ret;

 ret = pl111_init_clock_divider(drm);
 if (ret)
  return ret;

 if (!priv->variant->broken_vblank) {
  pl111_display_funcs.enable_vblank = pl111_display_enable_vblank;
  pl111_display_funcs.disable_vblank = pl111_display_disable_vblank;
 }

 ret = drm_simple_display_pipe_init(drm, &priv->pipe,
        &pl111_display_funcs,
        priv->variant->formats,
        priv->variant->nformats,
        ((void*)0),
        priv->connector);
 if (ret)
  return ret;

 return 0;
}
