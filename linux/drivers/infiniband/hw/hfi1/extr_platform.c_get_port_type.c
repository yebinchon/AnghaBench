
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {int port_type; int dd; } ;


 int PLATFORM_CONFIG_PORT_TABLE ;
 int PORT_TABLE_PORT_TYPE ;
 int PORT_TYPE_UNKNOWN ;
 int get_platform_config_field (int ,int ,int ,int ,int *,int) ;

void get_port_type(struct hfi1_pportdata *ppd)
{
 int ret;
 u32 temp;

 ret = get_platform_config_field(ppd->dd, PLATFORM_CONFIG_PORT_TABLE, 0,
     PORT_TABLE_PORT_TYPE, &temp,
     4);
 if (ret) {
  ppd->port_type = PORT_TYPE_UNKNOWN;
  return;
 }
 ppd->port_type = temp;
}
