
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 struct list_head accel_table ;

struct list_head *adf_devmgr_get_head(void)
{
 return &accel_table;
}
