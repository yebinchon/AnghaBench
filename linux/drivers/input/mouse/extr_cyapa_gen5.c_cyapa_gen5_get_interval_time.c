
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct pip_app_cmd_head {int cmd_code; int report_id; int length; int addr; scalar_t__ parameter_data; } ;
struct gen5_app_get_parameter_data {scalar_t__ parameter_id; } ;
struct cyapa {int dummy; } ;
typedef int resp_data ;


 int CYAPA_TSG_MAX_CMD_SIZE ;
 int EINVAL ;
 int GEN5_CMD_GET_PARAMETER ;

 scalar_t__ GEN5_PARAMETER_ACT_INTERVL_SIZE ;

 scalar_t__ GEN5_PARAMETER_ACT_LFT_INTERVL_SIZE ;

 scalar_t__ GEN5_PARAMETER_LP_INTRVL_SIZE ;
 int PIP_APP_CMD_REPORT_ID ;
 int PIP_OUTPUT_REPORT_ADDR ;
 int VALID_CMD_RESP_HEADER (scalar_t__*,int ) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,scalar_t__*,int,scalar_t__*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;
 scalar_t__ get_unaligned_le16 (scalar_t__*) ;
 int memset (scalar_t__*,int ,int) ;
 int put_unaligned_le16 (int,int *) ;

__attribute__((used)) static int cyapa_gen5_get_interval_time(struct cyapa *cyapa,
  u8 parameter_id, u16 *interval_time)
{
 struct pip_app_cmd_head *app_cmd_head;
 struct gen5_app_get_parameter_data *parameter_data;
 u8 cmd[CYAPA_TSG_MAX_CMD_SIZE];
 int cmd_len;
 u8 resp_data[11];
 int resp_len;
 u8 parameter_size;
 u16 mask, i;
 int error;

 memset(cmd, 0, CYAPA_TSG_MAX_CMD_SIZE);
 app_cmd_head = (struct pip_app_cmd_head *)cmd;
 parameter_data = (struct gen5_app_get_parameter_data *)
    app_cmd_head->parameter_data;
 cmd_len = sizeof(struct pip_app_cmd_head) +
    sizeof(struct gen5_app_get_parameter_data);

 *interval_time = 0;
 switch (parameter_id) {
 case 130:
  parameter_size = GEN5_PARAMETER_ACT_INTERVL_SIZE;
  break;
 case 129:
  parameter_size = GEN5_PARAMETER_ACT_LFT_INTERVL_SIZE;
  break;
 case 128:
  parameter_size = GEN5_PARAMETER_LP_INTRVL_SIZE;
  break;
 default:
  return -EINVAL;
 }

 put_unaligned_le16(PIP_OUTPUT_REPORT_ADDR, &app_cmd_head->addr);

 put_unaligned_le16(cmd_len - 2, &app_cmd_head->length);
 app_cmd_head->report_id = PIP_APP_CMD_REPORT_ID;
 app_cmd_head->cmd_code = GEN5_CMD_GET_PARAMETER;
 parameter_data->parameter_id = parameter_id;

 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, cmd_len,
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 0);
 if (error || resp_data[5] != parameter_id || resp_data[6] == 0 ||
  !VALID_CMD_RESP_HEADER(resp_data, GEN5_CMD_GET_PARAMETER))
  return error < 0 ? error : -EINVAL;

 mask = 0;
 for (i = 0; i < parameter_size; i++)
  mask |= (0xff << (i * 8));
 *interval_time = get_unaligned_le16(&resp_data[7]) & mask;

 return 0;
}
