
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tilcdc_drm_private {int wq; } ;
struct drm_crtc {int port; TYPE_1__* dev; } ;
struct TYPE_2__ {struct tilcdc_drm_private* dev_private; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int flush_workqueue (int ) ;
 int of_node_put (int ) ;
 int tilcdc_crtc_shutdown (struct drm_crtc*) ;

__attribute__((used)) static void tilcdc_crtc_destroy(struct drm_crtc *crtc)
{
 struct tilcdc_drm_private *priv = crtc->dev->dev_private;

 tilcdc_crtc_shutdown(crtc);

 flush_workqueue(priv->wq);

 of_node_put(crtc->port);
 drm_crtc_cleanup(crtc);
}
