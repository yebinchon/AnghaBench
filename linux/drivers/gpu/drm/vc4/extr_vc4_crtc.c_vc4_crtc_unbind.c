
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_crtc {int base; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int CRTC_WRITE (int ,int ) ;
 int PV_INTEN ;
 struct vc4_crtc* dev_get_drvdata (struct device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 struct platform_device* to_platform_device (struct device*) ;
 int vc4_crtc_destroy (int *) ;

__attribute__((used)) static void vc4_crtc_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct vc4_crtc *vc4_crtc = dev_get_drvdata(dev);

 vc4_crtc_destroy(&vc4_crtc->base);

 CRTC_WRITE(PV_INTEN, 0);

 platform_set_drvdata(pdev, ((void*)0));
}
