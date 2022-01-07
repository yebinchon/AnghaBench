
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {int hdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_OUTPUT_REPORT ;
 unsigned char WAC_CMD_DELETE_PAIRING ;
 int WAC_CMD_RETRIES ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (size_t const,int ) ;
 int wacom_set_report (int ,int ,unsigned char*,size_t const,int ) ;

__attribute__((used)) static int wacom_cmd_unpair_remote(struct wacom *wacom, unsigned char selector)
{
 const size_t buf_size = 2;
 unsigned char *buf;
 int retval;

 buf = kzalloc(buf_size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 buf[0] = WAC_CMD_DELETE_PAIRING;
 buf[1] = selector;

 retval = wacom_set_report(wacom->hdev, HID_OUTPUT_REPORT, buf,
      buf_size, WAC_CMD_RETRIES);
 kfree(buf);

 return retval;
}
