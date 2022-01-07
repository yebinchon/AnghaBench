
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int state; int gen; } ;
typedef int resp_data ;


 int CYAPA_GEN5 ;
 int CYAPA_STATE_GEN5_APP ;
 int CYAPA_STATE_GEN5_BL ;
 int CYAPA_STATE_NO_DEVICE ;
 int EIO ;
 int GEN5_APP_MAX_OUTPUT_LENGTH ;
 int GEN5_BL_MAX_OUTPUT_LENGTH ;
 int PIP_HID_APP_REPORT_ID ;
 int PIP_HID_BL_REPORT_ID ;
 int PIP_HID_DESCRIPTOR_SIZE ;
 size_t PIP_RESP_LENGTH_OFFSET ;
 int PIP_RESP_LENGTH_SIZE ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 int cyapa_empty_pip_output_data (struct cyapa*,int *,int *,int *) ;
 int cyapa_i2c_pip_cmd_irq_sync (struct cyapa*,int*,int,int*,int*,int,int ,int) ;
 int cyapa_i2c_pip_read (struct cyapa*,int*,int) ;
 int cyapa_sort_gen5_hid_descriptor_data ;
 int get_unaligned_le16 (int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int gen5_idle_state_parse(struct cyapa *cyapa)
{
 u8 resp_data[PIP_HID_DESCRIPTOR_SIZE];
 int max_output_len;
 int length;
 u8 cmd[2];
 int ret;
 int error;





 cyapa_empty_pip_output_data(cyapa, ((void*)0), ((void*)0), ((void*)0));

 memset(resp_data, 0, sizeof(resp_data));
 ret = cyapa_i2c_pip_read(cyapa, resp_data, 3);
 if (ret != 3)
  return ret < 0 ? ret : -EIO;

 length = get_unaligned_le16(&resp_data[PIP_RESP_LENGTH_OFFSET]);
 if (length == PIP_RESP_LENGTH_SIZE) {

  cyapa->gen = CYAPA_GEN5;

  cyapa_empty_pip_output_data(cyapa, ((void*)0), ((void*)0), ((void*)0));


  cmd[0] = 0x01;
  cmd[1] = 0x00;
  length = PIP_HID_DESCRIPTOR_SIZE;
  error = cyapa_i2c_pip_cmd_irq_sync(cyapa,
    cmd, PIP_RESP_LENGTH_SIZE,
    resp_data, &length,
    300,
    cyapa_sort_gen5_hid_descriptor_data,
    0);
  if (error)
   return error;

  length = get_unaligned_le16(
    &resp_data[PIP_RESP_LENGTH_OFFSET]);
  max_output_len = get_unaligned_le16(&resp_data[16]);
  if ((length == PIP_HID_DESCRIPTOR_SIZE ||
    length == PIP_RESP_LENGTH_SIZE) &&
   (resp_data[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_HID_BL_REPORT_ID) &&
   max_output_len == GEN5_BL_MAX_OUTPUT_LENGTH) {

   cyapa->state = CYAPA_STATE_GEN5_BL;
  } else if ((length == PIP_HID_DESCRIPTOR_SIZE ||
    length == PIP_RESP_LENGTH_SIZE) &&
   (resp_data[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_HID_APP_REPORT_ID) &&
   max_output_len == GEN5_APP_MAX_OUTPUT_LENGTH) {

   cyapa->state = CYAPA_STATE_GEN5_APP;
  } else {

   cyapa->state = CYAPA_STATE_NO_DEVICE;
  }
 }

 return 0;
}
