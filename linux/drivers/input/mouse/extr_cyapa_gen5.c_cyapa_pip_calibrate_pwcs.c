
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pip_app_cmd_head {int * parameter_data; int cmd_code; int report_id; int length; int addr; } ;
struct cyapa {int dummy; } ;
typedef int resp_data ;
typedef int cmd ;


 int EAGAIN ;
 int PIP_APP_CMD_REPORT_ID ;
 int PIP_CMD_CALIBRATE ;
 int PIP_CMD_COMPLETE_SUCCESS (int *) ;
 int PIP_OUTPUT_REPORT_ADDR ;
 int VALID_CMD_RESP_HEADER (int *,int ) ;
 int cyapa_empty_pip_output_data (struct cyapa*,int *,int *,int *) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int *,int,int *,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;
 int memset (int *,int ,int) ;
 int put_unaligned_le16 (int,int *) ;

__attribute__((used)) static int cyapa_pip_calibrate_pwcs(struct cyapa *cyapa,
  u8 calibrate_sensing_mode_type)
{
 struct pip_app_cmd_head *app_cmd_head;
 u8 cmd[8];
 u8 resp_data[6];
 int resp_len;
 int error;


 cyapa_empty_pip_output_data(cyapa, ((void*)0), ((void*)0), ((void*)0));

 memset(cmd, 0, sizeof(cmd));
 app_cmd_head = (struct pip_app_cmd_head *)cmd;
 put_unaligned_le16(PIP_OUTPUT_REPORT_ADDR, &app_cmd_head->addr);
 put_unaligned_le16(sizeof(cmd) - 2, &app_cmd_head->length);
 app_cmd_head->report_id = PIP_APP_CMD_REPORT_ID;
 app_cmd_head->cmd_code = PIP_CMD_CALIBRATE;
 app_cmd_head->parameter_data[0] = calibrate_sensing_mode_type;
 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
   cmd, sizeof(cmd),
   resp_data, &resp_len,
   5000, cyapa_sort_tsg_pip_app_resp_data, 1);
 if (error || !VALID_CMD_RESP_HEADER(resp_data, PIP_CMD_CALIBRATE) ||
   !PIP_CMD_COMPLETE_SUCCESS(resp_data))
  return error < 0 ? error : -EAGAIN;

 return 0;
}
