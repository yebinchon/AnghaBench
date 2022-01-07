
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidled_device {int lock; TYPE_1__* config; int * buf; int hdev; } ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__ report_type; int report_size; } ;


 int EINVAL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int HID_REQ_SET_REPORT ;
 scalar_t__ RAW_REQUEST ;
 int hid_hw_raw_request (int ,int ,int *,int ,int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hidled_recv(struct hidled_device *ldev, __u8 *buf)
{
 int ret;

 if (ldev->config->report_type != RAW_REQUEST)
  return -EINVAL;

 mutex_lock(&ldev->lock);

 memcpy(ldev->buf, buf, ldev->config->report_size);

 ret = hid_hw_raw_request(ldev->hdev, buf[0], ldev->buf,
     ldev->config->report_size,
     HID_FEATURE_REPORT,
     HID_REQ_SET_REPORT);
 if (ret < 0)
  goto err;

 ret = hid_hw_raw_request(ldev->hdev, buf[0], ldev->buf,
     ldev->config->report_size,
     HID_FEATURE_REPORT,
     HID_REQ_GET_REPORT);

 memcpy(buf, ldev->buf, ldev->config->report_size);
err:
 mutex_unlock(&ldev->lock);

 return ret < 0 ? ret : 0;
}
