
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int ID_REMOVE ;
 int do_id_store (struct device_driver*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t remove_id_store(struct device_driver *drv, const char *buf,
  size_t count)
{
 return do_id_store(drv, buf, count, ID_REMOVE);
}
