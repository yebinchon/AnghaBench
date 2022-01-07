
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidled_device {TYPE_1__* config; int lock; int buf; int hdev; } ;
typedef int __u8 ;
struct TYPE_2__ {int report_size; scalar_t__ report_type; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 scalar_t__ OUTPUT_REPORT ;
 scalar_t__ RAW_REQUEST ;
 int hid_hw_output_report (int ,int ,int) ;
 int hid_hw_raw_request (int ,int ,int ,int,int ,int ) ;
 int memcpy (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hidled_send(struct hidled_device *ldev, __u8 *buf)
{
 int ret;

 mutex_lock(&ldev->lock);





 memcpy(ldev->buf, buf, ldev->config->report_size);

 if (ldev->config->report_type == RAW_REQUEST)
  ret = hid_hw_raw_request(ldev->hdev, buf[0], ldev->buf,
      ldev->config->report_size,
      HID_FEATURE_REPORT,
      HID_REQ_SET_REPORT);
 else if (ldev->config->report_type == OUTPUT_REPORT)
  ret = hid_hw_output_report(ldev->hdev, ldev->buf,
        ldev->config->report_size);
 else
  ret = -EINVAL;

 mutex_unlock(&ldev->lock);

 if (ret < 0)
  return ret;

 return ret == ldev->config->report_size ? 0 : -EMSGSIZE;
}
