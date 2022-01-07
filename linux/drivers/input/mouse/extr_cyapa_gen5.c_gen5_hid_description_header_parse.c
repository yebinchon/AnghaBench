
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cyapa {void* state; void* gen; } ;


 void* CYAPA_GEN5 ;
 void* CYAPA_STATE_GEN5_APP ;
 void* CYAPA_STATE_GEN5_BL ;
 void* CYAPA_STATE_NO_DEVICE ;
 int EIO ;
 int GEN5_APP_MAX_OUTPUT_LENGTH ;
 int GEN5_BL_MAX_OUTPUT_LENGTH ;
 scalar_t__ PIP_HID_APP_REPORT_ID ;
 scalar_t__ PIP_HID_BL_REPORT_ID ;
 int PIP_HID_DESCRIPTOR_SIZE ;
 size_t PIP_RESP_LENGTH_OFFSET ;
 int PIP_RESP_LENGTH_SIZE ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 int cyapa_i2c_pip_read (struct cyapa*,scalar_t__*,int) ;
 int get_unaligned_le16 (scalar_t__*) ;

__attribute__((used)) static int gen5_hid_description_header_parse(struct cyapa *cyapa, u8 *reg_data)
{
 int length;
 u8 resp_data[32];
 int max_output_len;
 int ret;
 ret = cyapa_i2c_pip_read(cyapa, resp_data,
   PIP_HID_DESCRIPTOR_SIZE);
 if (ret != PIP_HID_DESCRIPTOR_SIZE)
  return ret < 0 ? ret : -EIO;
 length = get_unaligned_le16(&resp_data[PIP_RESP_LENGTH_OFFSET]);
 max_output_len = get_unaligned_le16(&resp_data[16]);
 if (length == PIP_RESP_LENGTH_SIZE) {
  if (reg_data[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_HID_BL_REPORT_ID) {




   cyapa->gen = CYAPA_GEN5;
   cyapa->state = CYAPA_STATE_GEN5_BL;
  } else {




   cyapa->gen = CYAPA_GEN5;
   cyapa->state = CYAPA_STATE_GEN5_APP;
  }
 } else if (length == PIP_HID_DESCRIPTOR_SIZE &&
   resp_data[2] == PIP_HID_BL_REPORT_ID &&
   max_output_len == GEN5_BL_MAX_OUTPUT_LENGTH) {

  cyapa->gen = CYAPA_GEN5;
  cyapa->state = CYAPA_STATE_GEN5_BL;
 } else if (length == PIP_HID_DESCRIPTOR_SIZE &&
   (resp_data[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_HID_APP_REPORT_ID) &&
   max_output_len == GEN5_APP_MAX_OUTPUT_LENGTH) {

  cyapa->gen = CYAPA_GEN5;
  cyapa->state = CYAPA_STATE_GEN5_APP;
 } else {

  cyapa->state = CYAPA_STATE_NO_DEVICE;
 }

 return 0;
}
