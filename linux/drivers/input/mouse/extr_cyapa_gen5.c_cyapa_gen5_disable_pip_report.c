
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pip_app_cmd_head {int* parameter_data; int cmd_code; int report_id; int length; int addr; } ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EINVAL ;
 int GEN5_CMD_SET_PARAMETER ;
 int GEN5_PARAMETER_DISABLE_PIP_REPORT ;
 int PIP_APP_CMD_REPORT_ID ;
 int PIP_OUTPUT_REPORT_ADDR ;
 int VALID_CMD_RESP_HEADER (int*,int ) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;
 int memset (int*,int ,int) ;
 int put_unaligned_le16 (int,int *) ;

__attribute__((used)) static int cyapa_gen5_disable_pip_report(struct cyapa *cyapa)
{
 struct pip_app_cmd_head *app_cmd_head;
 u8 cmd[10];
 u8 resp_data[7];
 int resp_len;
 int error;

 memset(cmd, 0, sizeof(cmd));
 app_cmd_head = (struct pip_app_cmd_head *)cmd;

 put_unaligned_le16(PIP_OUTPUT_REPORT_ADDR, &app_cmd_head->addr);
 put_unaligned_le16(sizeof(cmd) - 2, &app_cmd_head->length);
 app_cmd_head->report_id = PIP_APP_CMD_REPORT_ID;
 app_cmd_head->cmd_code = GEN5_CMD_SET_PARAMETER;
 app_cmd_head->parameter_data[0] = GEN5_PARAMETER_DISABLE_PIP_REPORT;
 app_cmd_head->parameter_data[1] = 0x01;
 app_cmd_head->parameter_data[2] = 0x01;
 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 0);
 if (error || resp_data[5] != GEN5_PARAMETER_DISABLE_PIP_REPORT ||
  !VALID_CMD_RESP_HEADER(resp_data, GEN5_CMD_SET_PARAMETER) ||
  resp_data[6] != 0x01)
  return error < 0 ? error : -EINVAL;

 return 0;
}
