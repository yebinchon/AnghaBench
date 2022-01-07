
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mcde {int connector; int pipe; scalar_t__ te_sync; } ;
struct drm_device {struct mcde* dev_private; } ;
struct TYPE_3__ {int disable_vblank; int enable_vblank; } ;


 int ARRAY_SIZE (int const*) ;
 int drm_simple_display_pipe_init (struct drm_device*,int *,TYPE_1__*,int const*,int ,int *,int ) ;
 int mcde_display_disable_vblank ;
 int mcde_display_enable_vblank ;
 TYPE_1__ mcde_display_funcs ;

int mcde_display_init(struct drm_device *drm)
{
 struct mcde *mcde = drm->dev_private;
 int ret;
 static const u32 formats[] = {
  139,
  141,
  129,
  132,
  135,
  137,
  140,
  142,
  130,
  133,

  131,
  134,
  136,
  138,
  128,
 };


 if (mcde->te_sync) {
  mcde_display_funcs.enable_vblank = mcde_display_enable_vblank;
  mcde_display_funcs.disable_vblank = mcde_display_disable_vblank;
 }

 ret = drm_simple_display_pipe_init(drm, &mcde->pipe,
        &mcde_display_funcs,
        formats, ARRAY_SIZE(formats),
        ((void*)0),
        mcde->connector);
 if (ret)
  return ret;

 return 0;
}
