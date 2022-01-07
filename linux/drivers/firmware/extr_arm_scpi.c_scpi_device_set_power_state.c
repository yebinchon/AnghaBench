
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dev_pstate_set {int pstate; int dev_id; } ;
typedef int stat ;
typedef int dev_set ;


 int CMD_SET_DEVICE_PWR_STATE ;
 int cpu_to_le16 (int ) ;
 int scpi_send_message (int ,struct dev_pstate_set*,int,int*,int) ;

__attribute__((used)) static int scpi_device_set_power_state(u16 dev_id, u8 pstate)
{
 int stat;
 struct dev_pstate_set dev_set = {
  .dev_id = cpu_to_le16(dev_id),
  .pstate = pstate,
 };

 return scpi_send_message(CMD_SET_DEVICE_PWR_STATE, &dev_set,
     sizeof(dev_set), &stat, sizeof(stat));
}
