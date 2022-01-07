
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device {TYPE_1__* ll_driver; } ;
typedef int __u8 ;
struct TYPE_2__ {int output_report; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int hid_hw_output_report (struct hid_device*,int *,size_t) ;
 int kfree (int *) ;
 int * kmemdup (int *,size_t,int ) ;

__attribute__((used)) static int wiimote_hid_send(struct hid_device *hdev, __u8 *buffer,
       size_t count)
{
 __u8 *buf;
 int ret;

 if (!hdev->ll_driver->output_report)
  return -ENODEV;

 buf = kmemdup(buffer, count, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = hid_hw_output_report(hdev, buf, count);

 kfree(buf);
 return ret;
}
