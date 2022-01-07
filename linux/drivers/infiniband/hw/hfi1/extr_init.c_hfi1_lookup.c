
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int hfi1_dev_table ;
 struct hfi1_devdata* xa_load (int *,int) ;

struct hfi1_devdata *hfi1_lookup(int unit)
{
 return xa_load(&hfi1_dev_table, unit);
}
