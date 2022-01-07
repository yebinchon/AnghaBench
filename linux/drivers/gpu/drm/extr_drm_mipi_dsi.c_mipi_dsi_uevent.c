
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int MIPI_DSI_MODULE_PREFIX ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (struct device*) ;

__attribute__((used)) static int mipi_dsi_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);
 int err;

 err = of_device_uevent_modalias(dev, env);
 if (err != -ENODEV)
  return err;

 add_uevent_var(env, "MODALIAS=%s%s", MIPI_DSI_MODULE_PREFIX,
         dsi->name);

 return 0;
}
