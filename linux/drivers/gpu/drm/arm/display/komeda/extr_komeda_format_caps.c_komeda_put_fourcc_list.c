
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int kfree (int *) ;

void komeda_put_fourcc_list(u32 *fourcc_list)
{
 kfree(fourcc_list);
}
