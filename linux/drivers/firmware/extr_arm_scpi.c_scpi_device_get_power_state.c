
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int pstate ;
typedef int id ;
typedef int __le16 ;


 int CMD_GET_DEVICE_PWR_STATE ;
 int cpu_to_le16 (int ) ;
 int scpi_send_message (int ,int *,int,int*,int) ;

__attribute__((used)) static int scpi_device_get_power_state(u16 dev_id)
{
 int ret;
 u8 pstate;
 __le16 id = cpu_to_le16(dev_id);

 ret = scpi_send_message(CMD_GET_DEVICE_PWR_STATE, &id,
    sizeof(id), &pstate, sizeof(pstate));
 return ret ? ret : pstate;
}
