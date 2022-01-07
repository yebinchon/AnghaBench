
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct omap_drm_private {unsigned int num_pipes; int channels; struct omap_drm_pipeline* pipes; } ;
struct omap_drm_pipeline {TYPE_1__* output; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct TYPE_3__ {scalar_t__ panel; } ;


 int drm_panel_detach (scalar_t__) ;
 int memset (int *,int ,int) ;
 int omapdss_device_disconnect (int *,TYPE_1__*) ;
 int omapdss_device_put (TYPE_1__*) ;

__attribute__((used)) static void omap_disconnect_pipelines(struct drm_device *ddev)
{
 struct omap_drm_private *priv = ddev->dev_private;
 unsigned int i;

 for (i = 0; i < priv->num_pipes; i++) {
  struct omap_drm_pipeline *pipe = &priv->pipes[i];

  if (pipe->output->panel)
   drm_panel_detach(pipe->output->panel);

  omapdss_device_disconnect(((void*)0), pipe->output);

  omapdss_device_put(pipe->output);
  pipe->output = ((void*)0);
 }

 memset(&priv->channels, 0, sizeof(priv->channels));

 priv->num_pipes = 0;
}
