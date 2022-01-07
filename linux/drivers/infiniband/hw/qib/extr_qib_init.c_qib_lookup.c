
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int qib_dev_table ;
 struct qib_devdata* xa_load (int *,int) ;

struct qib_devdata *qib_lookup(int unit)
{
 return xa_load(&qib_dev_table, unit);
}
