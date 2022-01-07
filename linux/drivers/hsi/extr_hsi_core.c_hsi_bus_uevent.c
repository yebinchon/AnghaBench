
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int dev_name (struct device*) ;

__attribute__((used)) static int hsi_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 add_uevent_var(env, "MODALIAS=hsi:%s", dev_name(dev));

 return 0;
}
