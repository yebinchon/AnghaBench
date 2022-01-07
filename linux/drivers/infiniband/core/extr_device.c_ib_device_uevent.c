
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 int dev_name (struct device*) ;

__attribute__((used)) static int ib_device_uevent(struct device *device,
       struct kobj_uevent_env *env)
{
 if (add_uevent_var(env, "NAME=%s", dev_name(device)))
  return -ENOMEM;





 return 0;
}
