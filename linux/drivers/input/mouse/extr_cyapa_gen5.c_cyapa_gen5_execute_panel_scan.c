
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pip_app_cmd_head {int cmd_code; int report_id; int length; int addr; } ;
struct cyapa {int dummy; } ;
typedef int ssize_t ;
typedef int resp_data ;
typedef int cmd ;


 int EAGAIN ;
 int GEN5_CMD_EXECUTE_PANEL_SCAN ;
 int PIP_APP_CMD_REPORT_ID ;
 int PIP_CMD_COMPLETE_SUCCESS (int *) ;
 int PIP_OUTPUT_REPORT_ADDR ;
 int VALID_CMD_RESP_HEADER (int *,int ) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int *,int,int *,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;
 int memset (int *,int ,int) ;
 int put_unaligned_le16 (int,int *) ;

__attribute__((used)) static ssize_t cyapa_gen5_execute_panel_scan(struct cyapa *cyapa)
{
 struct pip_app_cmd_head *app_cmd_head;
 u8 cmd[7];
 u8 resp_data[6];
 int resp_len;
 int error;

 memset(cmd, 0, sizeof(cmd));
 app_cmd_head = (struct pip_app_cmd_head *)cmd;
 put_unaligned_le16(PIP_OUTPUT_REPORT_ADDR, &app_cmd_head->addr);
 put_unaligned_le16(sizeof(cmd) - 2, &app_cmd_head->length);
 app_cmd_head->report_id = PIP_APP_CMD_REPORT_ID;
 app_cmd_head->cmd_code = GEN5_CMD_EXECUTE_PANEL_SCAN;
 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
   cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 1);
 if (error || resp_len != sizeof(resp_data) ||
   !VALID_CMD_RESP_HEADER(resp_data,
    GEN5_CMD_EXECUTE_PANEL_SCAN) ||
   !PIP_CMD_COMPLETE_SUCCESS(resp_data))
  return error ? error : -EAGAIN;

 return 0;
}
