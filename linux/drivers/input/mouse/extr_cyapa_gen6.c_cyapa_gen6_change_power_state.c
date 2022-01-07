
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EAGAIN ;
 int EINVAL ;
 int VALID_CMD_RESP_HEADER (int*,int) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;

__attribute__((used)) static int cyapa_gen6_change_power_state(struct cyapa *cyapa, u8 power_mode)
{
 u8 cmd[] = { 0x04, 0x00, 0x06, 0x00, 0x2f, 0x00, 0x46, power_mode };
 u8 resp_data[6];
 int resp_len;
 int error;

 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 0);
 if (error || !VALID_CMD_RESP_HEADER(resp_data, 0x46))
  return error < 0 ? error : -EINVAL;


 if (resp_data[5] != power_mode)
  return -EAGAIN;

 return 0;
}
