
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EINVAL ;
 int PIP_CMD_COMPLETE_SUCCESS (int*) ;
 int VALID_CMD_RESP_HEADER (int*,int) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;

__attribute__((used)) static int cyapa_gen6_config_dev_irq(struct cyapa *cyapa, u8 cmd_code)
{
 u8 cmd[] = { 0x04, 0x00, 0x05, 0x00, 0x2f, 0x00, cmd_code };
 u8 resp_data[6];
 int resp_len;
 int error;

 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 0);
 if (error || !VALID_CMD_RESP_HEADER(resp_data, cmd_code) ||
   !PIP_CMD_COMPLETE_SUCCESS(resp_data)
   )
  return error < 0 ? error : -EINVAL;

 return 0;
}
