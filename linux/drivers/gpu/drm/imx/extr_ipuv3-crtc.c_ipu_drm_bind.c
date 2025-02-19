
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_crtc {struct device* dev; } ;
struct ipu_client_platformdata {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {struct ipu_client_platformdata* platform_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct ipu_crtc*) ;
 struct ipu_crtc* devm_kzalloc (struct device*,int,int ) ;
 int ipu_crtc_init (struct ipu_crtc*,struct ipu_client_platformdata*,struct drm_device*) ;

__attribute__((used)) static int ipu_drm_bind(struct device *dev, struct device *master, void *data)
{
 struct ipu_client_platformdata *pdata = dev->platform_data;
 struct drm_device *drm = data;
 struct ipu_crtc *ipu_crtc;
 int ret;

 ipu_crtc = devm_kzalloc(dev, sizeof(*ipu_crtc), GFP_KERNEL);
 if (!ipu_crtc)
  return -ENOMEM;

 ipu_crtc->dev = dev;

 ret = ipu_crtc_init(ipu_crtc, pdata, drm);
 if (ret)
  return ret;

 dev_set_drvdata(dev, ipu_crtc);

 return 0;
}
