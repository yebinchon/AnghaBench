
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;


 int GEN5_APP_MAX_OUTPUT_LENGTH ;
 int GEN5_BL_MAX_OUTPUT_LENGTH ;
 int PIP_HID_APP_REPORT_ID ;
 int PIP_HID_BL_REPORT_ID ;
 int PIP_HID_DESCRIPTOR_SIZE ;
 size_t PIP_RESP_LENGTH_OFFSET ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;
 int get_unaligned_le16 (int *) ;

__attribute__((used)) static bool cyapa_sort_gen5_hid_descriptor_data(struct cyapa *cyapa,
  u8 *buf, int len)
{
 int resp_len;
 int max_output_len;


 if (len != PIP_HID_DESCRIPTOR_SIZE)
  return 0;

 resp_len = get_unaligned_le16(&buf[PIP_RESP_LENGTH_OFFSET]);
 max_output_len = get_unaligned_le16(&buf[16]);
 if (resp_len == PIP_HID_DESCRIPTOR_SIZE) {
  if (buf[PIP_RESP_REPORT_ID_OFFSET] == PIP_HID_BL_REPORT_ID &&
    max_output_len == GEN5_BL_MAX_OUTPUT_LENGTH) {

   return 1;
  } else if ((buf[PIP_RESP_REPORT_ID_OFFSET] ==
    PIP_HID_APP_REPORT_ID) &&
    max_output_len == GEN5_APP_MAX_OUTPUT_LENGTH) {

   return 1;
  }
 }

 return 0;
}
