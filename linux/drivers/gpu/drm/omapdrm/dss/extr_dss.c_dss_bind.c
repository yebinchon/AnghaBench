
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dss_device {struct platform_device* drm_pdev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int component_bind_all (struct device*,int *) ;
 int component_unbind_all (struct device*,int *) ;
 struct dss_device* dev_get_drvdata (struct device*) ;
 int omapdss_set_dss (struct dss_device*) ;
 struct platform_device* platform_device_register_simple (char*,int ,int *,int ) ;
 int pm_set_vt_switch (int ) ;

__attribute__((used)) static int dss_bind(struct device *dev)
{
 struct dss_device *dss = dev_get_drvdata(dev);
 struct platform_device *drm_pdev;
 int r;

 r = component_bind_all(dev, ((void*)0));
 if (r)
  return r;

 pm_set_vt_switch(0);

 omapdss_set_dss(dss);

 drm_pdev = platform_device_register_simple("omapdrm", 0, ((void*)0), 0);
 if (IS_ERR(drm_pdev)) {
  component_unbind_all(dev, ((void*)0));
  return PTR_ERR(drm_pdev);
 }

 dss->drm_pdev = drm_pdev;

 return 0;
}
