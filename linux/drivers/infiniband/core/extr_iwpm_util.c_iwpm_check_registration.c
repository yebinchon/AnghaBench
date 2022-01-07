
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int iwpm_get_registration (int ) ;

u32 iwpm_check_registration(u8 nl_client, u32 reg)
{
 return (iwpm_get_registration(nl_client) & reg);
}
