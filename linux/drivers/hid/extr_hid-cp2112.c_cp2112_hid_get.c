
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_REQ_GET_REPORT ;
 int hid_hw_raw_request (struct hid_device*,unsigned char,int *,size_t,unsigned char,int ) ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static int cp2112_hid_get(struct hid_device *hdev, unsigned char report_number,
     u8 *data, size_t count, unsigned char report_type)
{
 u8 *buf;
 int ret;

 buf = kmalloc(count, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = hid_hw_raw_request(hdev, report_number, buf, count,
           report_type, HID_REQ_GET_REPORT);
 memcpy(data, buf, count);
 kfree(buf);
 return ret;
}
