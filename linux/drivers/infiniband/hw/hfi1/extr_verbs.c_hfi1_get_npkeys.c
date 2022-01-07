
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_devdata {TYPE_1__* pport; } ;
struct TYPE_2__ {int pkeys; } ;


 int ARRAY_SIZE (int ) ;

unsigned hfi1_get_npkeys(struct hfi1_devdata *dd)
{
 return ARRAY_SIZE(dd->pport[0].pkeys);
}
