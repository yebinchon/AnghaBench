
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct tsg_bl_flash_row_head {int flash_data; int flash_row_id; scalar_t__ flash_array_id; } ;
struct pip_bl_packet_start {int data_length; int cmd_code; int sop; } ;
struct pip_bl_packet_end {int eop; int crc; } ;
struct pip_bl_cmd_head {scalar_t__ data; int report_id; int length; int addr; struct pip_bl_packet_start packet_start; } ;
struct cyapa_tsg_bin_image_data_record {scalar_t__ flash_array_id; scalar_t__* record_data; int record_len; int row_number; } ;
struct cyapa {int dummy; } ;
typedef int resp_data ;


 scalar_t__ CYAPA_TSG_FLASH_MAP_BLOCK_SIZE ;
 int CYAPA_TSG_MAX_CMD_SIZE ;
 int EAGAIN ;
 int PIP_BL_BLOCK_WRITE_RESP_LEN ;
 int PIP_BL_CMD_PROGRAM_VERIFY_ROW ;
 int PIP_BL_CMD_REPORT_ID ;
 scalar_t__ PIP_BL_RESP_REPORT_ID ;
 int PIP_CMD_COMPLETE_SUCCESS (scalar_t__*) ;
 int PIP_EOP_KEY ;
 scalar_t__ PIP_OUTPUT_REPORT_ADDR ;
 int PIP_SOP_KEY ;
 scalar_t__ crc_itu_t (int,scalar_t__*,scalar_t__) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,scalar_t__*,scalar_t__,scalar_t__*,int*,int,int ,int) ;
 int cyapa_sort_tsg_pip_bl_resp_data ;
 scalar_t__ get_unaligned_be16 (int *) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;
 int put_unaligned_le16 (scalar_t__,int *) ;

__attribute__((used)) static int cyapa_pip_write_fw_block(struct cyapa *cyapa,
  struct cyapa_tsg_bin_image_data_record *flash_record)
{
 struct pip_bl_cmd_head *bl_cmd_head;
 struct pip_bl_packet_start *bl_packet_start;
 struct tsg_bl_flash_row_head *flash_row_head;
 struct pip_bl_packet_end *bl_packet_end;
 u8 cmd[CYAPA_TSG_MAX_CMD_SIZE];
 u16 cmd_len;
 u8 flash_array_id;
 u16 flash_row_id;
 u16 record_len;
 u8 *record_data;
 u16 data_len;
 u16 crc;
 u8 resp_data[11];
 int resp_len;
 int error;

 flash_array_id = flash_record->flash_array_id;
 flash_row_id = get_unaligned_be16(&flash_record->row_number);
 record_len = get_unaligned_be16(&flash_record->record_len);
 record_data = flash_record->record_data;

 memset(cmd, 0, CYAPA_TSG_MAX_CMD_SIZE);
 bl_cmd_head = (struct pip_bl_cmd_head *)cmd;
 bl_packet_start = &bl_cmd_head->packet_start;
 cmd_len = sizeof(struct pip_bl_cmd_head) +
    sizeof(struct tsg_bl_flash_row_head) +
    CYAPA_TSG_FLASH_MAP_BLOCK_SIZE +
    sizeof(struct pip_bl_packet_end);

 put_unaligned_le16(PIP_OUTPUT_REPORT_ADDR, &bl_cmd_head->addr);

 put_unaligned_le16(cmd_len - 2, &bl_cmd_head->length);
 bl_cmd_head->report_id = PIP_BL_CMD_REPORT_ID;
 bl_packet_start->sop = PIP_SOP_KEY;
 bl_packet_start->cmd_code = PIP_BL_CMD_PROGRAM_VERIFY_ROW;


 data_len = sizeof(struct tsg_bl_flash_row_head) + record_len;
 put_unaligned_le16(data_len, &bl_packet_start->data_length);

 flash_row_head = (struct tsg_bl_flash_row_head *)bl_cmd_head->data;
 flash_row_head->flash_array_id = flash_array_id;
 put_unaligned_le16(flash_row_id, &flash_row_head->flash_row_id);
 memcpy(flash_row_head->flash_data, record_data, record_len);

 bl_packet_end = (struct pip_bl_packet_end *)(bl_cmd_head->data +
            data_len);
 crc = crc_itu_t(0xffff, (u8 *)bl_packet_start,
  sizeof(struct pip_bl_packet_start) + data_len);
 put_unaligned_le16(crc, &bl_packet_end->crc);
 bl_packet_end->eop = PIP_EOP_KEY;

 resp_len = sizeof(resp_data);
 error = cyapa_i2c_pip_cmd_irq_sync(cyapa, cmd, cmd_len,
   resp_data, &resp_len,
   500, cyapa_sort_tsg_pip_bl_resp_data, 1);
 if (error || resp_len != PIP_BL_BLOCK_WRITE_RESP_LEN ||
   resp_data[2] != PIP_BL_RESP_REPORT_ID ||
   !PIP_CMD_COMPLETE_SUCCESS(resp_data))
  return error < 0 ? error : -EAGAIN;

 return 0;
}
