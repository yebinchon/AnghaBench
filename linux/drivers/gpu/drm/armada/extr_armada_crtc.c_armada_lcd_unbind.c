
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct armada_crtc {int crtc; } ;


 int armada_drm_crtc_destroy (int *) ;
 struct armada_crtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void
armada_lcd_unbind(struct device *dev, struct device *master, void *data)
{
 struct armada_crtc *dcrtc = dev_get_drvdata(dev);

 armada_drm_crtc_destroy(&dcrtc->crtc);
}
