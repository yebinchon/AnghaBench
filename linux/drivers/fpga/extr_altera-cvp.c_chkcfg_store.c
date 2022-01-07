
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int altera_cvp_chkcfg ;
 int kstrtobool (char const*,int *) ;

__attribute__((used)) static ssize_t chkcfg_store(struct device_driver *drv, const char *buf,
       size_t count)
{
 int ret;

 ret = kstrtobool(buf, &altera_cvp_chkcfg);
 if (ret)
  return ret;

 return count;
}
