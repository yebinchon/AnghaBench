
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int * reg_list; } ;


 TYPE_1__ iwpm_admin ;

void iwpm_set_registration(u8 nl_client, u32 reg)
{
 iwpm_admin.reg_list[nl_client] = reg;
}
