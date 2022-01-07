
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cyapa {int dummy; } ;


 scalar_t__ PIP_HID_APP_REPORT_ID ;
 scalar_t__ PIP_HID_BL_REPORT_ID ;
 int PIP_HID_DESCRIPTOR_SIZE ;
 size_t PIP_RESP_REPORT_ID_OFFSET ;

__attribute__((used)) static bool cyapa_sort_pip_hid_descriptor_data(struct cyapa *cyapa,
  u8 *buf, int len)
{
 if (len != PIP_HID_DESCRIPTOR_SIZE)
  return 0;

 if (buf[PIP_RESP_REPORT_ID_OFFSET] == PIP_HID_APP_REPORT_ID ||
  buf[PIP_RESP_REPORT_ID_OFFSET] == PIP_HID_BL_REPORT_ID)
  return 1;

 return 0;
}
