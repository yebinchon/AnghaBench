
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_hid_data {int request_done; size_t raw_buf_size; int raw_get_req; int * raw_buf; } ;
struct hostif_msg {int dummy; } ;
struct hid_device {struct ishtp_hid_data* driver_data; } ;
typedef int __u8 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char HID_OUTPUT_REPORT ;


 int hid_hw_wait (struct hid_device*) ;
 int hid_ishtp_get_report (struct hid_device*,unsigned char,unsigned char) ;
 int hid_ishtp_set_feature (struct hid_device*,char*,size_t,unsigned char) ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int memcpy (int ,int *,size_t) ;

__attribute__((used)) static int ishtp_raw_request(struct hid_device *hid, unsigned char reportnum,
        __u8 *buf, size_t len, unsigned char rtype,
        int reqtype)
{
 struct ishtp_hid_data *hid_data = hid->driver_data;
 char *ishtp_buf = ((void*)0);
 size_t ishtp_buf_len;
 unsigned int header_size = sizeof(struct hostif_msg);

 if (rtype == HID_OUTPUT_REPORT)
  return -EINVAL;

 hid_data->request_done = 0;
 switch (reqtype) {
 case 129:
  hid_data->raw_buf = buf;
  hid_data->raw_buf_size = len;
  hid_data->raw_get_req = 1;

  hid_ishtp_get_report(hid, reportnum, rtype);
  break;
 case 128:




  ishtp_buf_len = len + header_size;
  ishtp_buf = kzalloc(ishtp_buf_len + 7, GFP_KERNEL);
  if (!ishtp_buf)
   return -ENOMEM;

  memcpy(ishtp_buf + header_size, buf, len);
  hid_ishtp_set_feature(hid, ishtp_buf, ishtp_buf_len, reportnum);
  kfree(ishtp_buf);
  break;
 }

 hid_hw_wait(hid);

 return len;
}
