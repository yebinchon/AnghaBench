
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
typedef int __u8 ;


 int EINVAL ;
 int EIO ;





 int UHID_FEATURE_REPORT ;
 int UHID_INPUT_REPORT ;
 int UHID_OUTPUT_REPORT ;
 int uhid_hid_get_report (struct hid_device*,unsigned char,int *,size_t,int ) ;
 int uhid_hid_set_report (struct hid_device*,unsigned char,int *,size_t,int ) ;

__attribute__((used)) static int uhid_hid_raw_request(struct hid_device *hid, unsigned char reportnum,
    __u8 *buf, size_t len, unsigned char rtype,
    int reqtype)
{
 u8 u_rtype;

 switch (rtype) {
 case 132:
  u_rtype = UHID_FEATURE_REPORT;
  break;
 case 130:
  u_rtype = UHID_OUTPUT_REPORT;
  break;
 case 131:
  u_rtype = UHID_INPUT_REPORT;
  break;
 default:
  return -EINVAL;
 }

 switch (reqtype) {
 case 129:
  return uhid_hid_get_report(hid, reportnum, buf, len, u_rtype);
 case 128:
  return uhid_hid_set_report(hid, reportnum, buf, len, u_rtype);
 default:
  return -EIO;
 }
}
