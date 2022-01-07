
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EINVAL ;
 int PIP_DEEP_SLEEP_STATE_MASK ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_sort_pip_deep_sleep_data ;

int cyapa_pip_deep_sleep(struct cyapa *cyapa, u8 state)
{
 u8 cmd[] = { 0x05, 0x00, 0x00, 0x08};
 u8 resp_data[5];
 int resp_len;
 int error;

 cmd[2] = state & PIP_DEEP_SLEEP_STATE_MASK;
 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_pip_deep_sleep_data, 0);
 if (error || ((resp_data[3] & PIP_DEEP_SLEEP_STATE_MASK) != state))
  return -EINVAL;

 return 0;
}
