
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int* client_list; } ;


 TYPE_1__ iwpm_admin ;

void iwpm_set_valid(u8 nl_client, int valid)
{
 iwpm_admin.client_list[nl_client] = valid;
}
