
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct aspeed_gfx* dev_private; } ;
struct aspeed_gfx {int connector; int pipe; } ;


 int ARRAY_SIZE (int ) ;
 int aspeed_gfx_formats ;
 int aspeed_gfx_funcs ;
 int drm_simple_display_pipe_init (struct drm_device*,int *,int *,int ,int ,int *,int *) ;

int aspeed_gfx_create_pipe(struct drm_device *drm)
{
 struct aspeed_gfx *priv = drm->dev_private;

 return drm_simple_display_pipe_init(drm, &priv->pipe, &aspeed_gfx_funcs,
         aspeed_gfx_formats,
         ARRAY_SIZE(aspeed_gfx_formats),
         ((void*)0),
         &priv->connector);
}
