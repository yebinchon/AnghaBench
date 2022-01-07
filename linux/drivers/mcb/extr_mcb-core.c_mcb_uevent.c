
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcb_device {int id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct mcb_device* to_mcb_device (struct device*) ;

__attribute__((used)) static int mcb_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct mcb_device *mdev = to_mcb_device(dev);
 int ret;

 ret = add_uevent_var(env, "MODALIAS=mcb:16z%03d", mdev->id);
 if (ret)
  return -ENOMEM;

 return 0;
}
