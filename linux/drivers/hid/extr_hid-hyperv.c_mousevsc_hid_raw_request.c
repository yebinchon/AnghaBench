
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int __u8 ;



__attribute__((used)) static int mousevsc_hid_raw_request(struct hid_device *hid,
        unsigned char report_num,
        __u8 *buf, size_t len,
        unsigned char rtype,
        int reqtype)
{
 return 0;
}
