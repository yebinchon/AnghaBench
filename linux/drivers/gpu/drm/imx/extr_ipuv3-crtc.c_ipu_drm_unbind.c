
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_crtc {scalar_t__* plane; } ;
struct device {int dummy; } ;


 struct ipu_crtc* dev_get_drvdata (struct device*) ;
 int ipu_plane_put_resources (scalar_t__) ;
 int ipu_put_resources (struct ipu_crtc*) ;

__attribute__((used)) static void ipu_drm_unbind(struct device *dev, struct device *master,
 void *data)
{
 struct ipu_crtc *ipu_crtc = dev_get_drvdata(dev);

 ipu_put_resources(ipu_crtc);
 if (ipu_crtc->plane[1])
  ipu_plane_put_resources(ipu_crtc->plane[1]);
 ipu_plane_put_resources(ipu_crtc->plane[0]);
}
