
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct gnss_device {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int gnss_type_name (struct gnss_device*) ;
 struct gnss_device* to_gnss_device (struct device*) ;

__attribute__((used)) static int gnss_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct gnss_device *gdev = to_gnss_device(dev);
 int ret;

 ret = add_uevent_var(env, "GNSS_TYPE=%s", gnss_type_name(gdev));
 if (ret)
  return ret;

 return 0;
}
