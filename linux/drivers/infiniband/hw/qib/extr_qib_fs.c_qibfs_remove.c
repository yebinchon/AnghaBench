
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 scalar_t__ qib_super ;
 int remove_device_files (scalar_t__,struct qib_devdata*) ;

int qibfs_remove(struct qib_devdata *dd)
{
 int ret = 0;

 if (qib_super)
  ret = remove_device_files(qib_super, dd);

 return ret;
}
