
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tve200_drm_dev_private {int connector; int pipe; } ;
struct drm_device {struct tve200_drm_dev_private* dev_private; } ;


 int ARRAY_SIZE (int const*) ;
 int drm_simple_display_pipe_init (struct drm_device*,int *,int *,int const*,int ,int *,int ) ;
 int tve200_display_funcs ;

int tve200_display_init(struct drm_device *drm)
{
 struct tve200_drm_dev_private *priv = drm->dev_private;
 int ret;
 static const u32 formats[] = {
  131,
  133,
  137,
  138,
  132,
  134,





  129,
  128,
  136,
  135,

  130,
 };

 ret = drm_simple_display_pipe_init(drm, &priv->pipe,
        &tve200_display_funcs,
        formats, ARRAY_SIZE(formats),
        ((void*)0),
        priv->connector);
 if (ret)
  return ret;

 return 0;
}
