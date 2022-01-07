
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_tvout {struct drm_device* drm_dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct sti_tvout* dev_get_drvdata (struct device*) ;
 int sti_tvout_create_encoders (struct drm_device*,struct sti_tvout*) ;

__attribute__((used)) static int sti_tvout_bind(struct device *dev, struct device *master, void *data)
{
 struct sti_tvout *tvout = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;

 tvout->drm_dev = drm_dev;

 sti_tvout_create_encoders(drm_dev, tvout);

 return 0;
}
