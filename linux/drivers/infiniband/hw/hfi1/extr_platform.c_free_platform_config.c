
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct hfi1_devdata {TYPE_1__ platform_config; } ;


 int kfree (int *) ;

void free_platform_config(struct hfi1_devdata *dd)
{

 kfree(dd->platform_config.data);
 dd->platform_config.data = ((void*)0);
}
