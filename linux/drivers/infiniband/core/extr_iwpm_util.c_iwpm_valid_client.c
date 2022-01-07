
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int* client_list; } ;


 TYPE_1__ iwpm_admin ;

int iwpm_valid_client(u8 nl_client)
{
 return iwpm_admin.client_list[nl_client];
}
