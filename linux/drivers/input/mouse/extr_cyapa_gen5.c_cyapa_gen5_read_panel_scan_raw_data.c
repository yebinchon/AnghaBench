
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct pip_app_cmd_head {scalar_t__ parameter_data; scalar_t__ cmd_code; int report_id; int length; int addr; } ;
struct gen5_retrieve_panel_scan_data {scalar_t__ data_id; int read_elements; int read_offset; } ;
struct cyapa {int dummy; } ;
typedef scalar_t__ s32 ;
typedef int resp_data ;
typedef int cmd ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ GEN5_CMD_RETRIEVE_PANEL_SCAN ;
 scalar_t__ GEN5_PANEL_SCAN_SELF_DIFFCOUNT ;
 scalar_t__ GEN5_PWC_DATA_ELEMENT_SIZE_MASK ;
 int GEN5_RESP_DATA_STRUCTURE_OFFSET ;
 int INT_MAX ;
 int INT_MIN ;
 int PIP_APP_CMD_REPORT_ID ;
 int PIP_CMD_COMPLETE_SUCCESS (scalar_t__*) ;
 int PIP_OUTPUT_REPORT_ADDR ;
 int VALID_CMD_RESP_HEADER (scalar_t__*,scalar_t__) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,scalar_t__*,int,scalar_t__*,int*,int,int ,int) ;
 scalar_t__ cyapa_parse_structure_data (scalar_t__,scalar_t__*,int) ;
 int cyapa_sort_tsg_pip_app_resp_data ;
 int get_unaligned_le16 (scalar_t__*) ;
 int max (scalar_t__,int) ;
 int min (scalar_t__,int) ;
 int put_unaligned_le16 (int,int *) ;
 int put_unaligned_le32 (scalar_t__,scalar_t__*) ;

__attribute__((used)) static int cyapa_gen5_read_panel_scan_raw_data(struct cyapa *cyapa,
  u8 cmd_code, u8 raw_data_type, int raw_data_max_num,
  int *raw_data_max, int *raw_data_min, int *raw_data_ave,
  u8 *buffer)
{
 struct pip_app_cmd_head *app_cmd_head;
 struct gen5_retrieve_panel_scan_data *panel_sacn_data;
 u8 cmd[12];
 u8 resp_data[256];
 int resp_len;
 int read_elements;
 int read_len;
 u16 offset;
 s32 value;
 int sum, count;
 int data_size;
 s32 *intp;
 int i;
 int error;

 if (cmd_code != GEN5_CMD_RETRIEVE_PANEL_SCAN ||
  (raw_data_type > GEN5_PANEL_SCAN_SELF_DIFFCOUNT) ||
  !raw_data_max || !raw_data_min || !raw_data_ave)
  return -EINVAL;

 intp = (s32 *)buffer;
 *raw_data_max = INT_MIN;
 *raw_data_min = INT_MAX;
 sum = count = 0;
 offset = 0;

 read_elements = (256 - GEN5_RESP_DATA_STRUCTURE_OFFSET) / 4;
 read_len = read_elements * 4;
 app_cmd_head = (struct pip_app_cmd_head *)cmd;
 put_unaligned_le16(PIP_OUTPUT_REPORT_ADDR, &app_cmd_head->addr);
 put_unaligned_le16(sizeof(cmd) - 2, &app_cmd_head->length);
 app_cmd_head->report_id = PIP_APP_CMD_REPORT_ID;
 app_cmd_head->cmd_code = cmd_code;
 panel_sacn_data = (struct gen5_retrieve_panel_scan_data *)
   app_cmd_head->parameter_data;
 do {
  put_unaligned_le16(offset, &panel_sacn_data->read_offset);
  put_unaligned_le16(read_elements,
   &panel_sacn_data->read_elements);
  panel_sacn_data->data_id = raw_data_type;

  resp_len = GEN5_RESP_DATA_STRUCTURE_OFFSET + read_len;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
   cmd, sizeof(cmd),
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_app_resp_data, 1);
  if (error || resp_len < GEN5_RESP_DATA_STRUCTURE_OFFSET ||
    !VALID_CMD_RESP_HEADER(resp_data, cmd_code) ||
    !PIP_CMD_COMPLETE_SUCCESS(resp_data) ||
    resp_data[6] != raw_data_type)
   return error ? error : -EAGAIN;

  read_elements = get_unaligned_le16(&resp_data[7]);
  if (read_elements == 0)
   break;

  data_size = (resp_data[9] & GEN5_PWC_DATA_ELEMENT_SIZE_MASK);
  offset += read_elements;
  if (read_elements) {
   for (i = GEN5_RESP_DATA_STRUCTURE_OFFSET;
        i < (read_elements * data_size +
     GEN5_RESP_DATA_STRUCTURE_OFFSET);
        i += data_size) {
    value = cyapa_parse_structure_data(resp_data[9],
      &resp_data[i], data_size);
    *raw_data_min = min(value, *raw_data_min);
    *raw_data_max = max(value, *raw_data_max);

    if (intp)
     put_unaligned_le32(value, &intp[count]);

    sum += value;
    count++;

   }
  }

  if (count >= raw_data_max_num)
   break;

  read_elements = (sizeof(resp_data) -
    GEN5_RESP_DATA_STRUCTURE_OFFSET) / data_size;
  read_len = read_elements * data_size;
 } while (1);

 *raw_data_ave = count ? (sum / count) : 0;

 return 0;
}
