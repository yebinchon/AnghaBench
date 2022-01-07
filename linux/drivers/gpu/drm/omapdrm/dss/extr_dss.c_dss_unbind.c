
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int drm_pdev; } ;
struct device {int dummy; } ;


 int component_unbind_all (struct device*,int *) ;
 struct dss_device* dev_get_drvdata (struct device*) ;
 int omapdss_set_dss (int *) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void dss_unbind(struct device *dev)
{
 struct dss_device *dss = dev_get_drvdata(dev);

 platform_device_unregister(dss->drm_pdev);

 omapdss_set_dss(((void*)0));

 component_unbind_all(dev, ((void*)0));
}
