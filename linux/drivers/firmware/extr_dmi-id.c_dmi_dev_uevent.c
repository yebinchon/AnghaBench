
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int buflen; int * buf; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*) ;
 int get_modalias (int *,int) ;

__attribute__((used)) static int dmi_dev_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 ssize_t len;

 if (add_uevent_var(env, "MODALIAS="))
  return -ENOMEM;
 len = get_modalias(&env->buf[env->buflen - 1],
      sizeof(env->buf) - env->buflen);
 if (len >= (sizeof(env->buf) - env->buflen))
  return -ENOMEM;
 env->buflen += len;
 return 0;
}
