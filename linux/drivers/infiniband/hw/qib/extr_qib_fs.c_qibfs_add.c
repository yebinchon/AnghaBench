
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int add_cntr_files (int *,struct qib_devdata*) ;
 int * qib_super ;

int qibfs_add(struct qib_devdata *dd)
{
 int ret;
 if (qib_super == ((void*)0))
  ret = 0;
 else
  ret = add_cntr_files(qib_super, dd);
 return ret;
}
