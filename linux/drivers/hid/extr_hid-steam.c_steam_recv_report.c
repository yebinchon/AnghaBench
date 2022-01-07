
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct steam_device {TYPE_2__* hdev; } ;
struct hid_report {int dummy; } ;
struct TYPE_4__ {TYPE_1__* report_enum; } ;
struct TYPE_3__ {struct hid_report** report_id_hash; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int * hid_alloc_report_buf (struct hid_report*,int ) ;
 int hid_hw_raw_request (TYPE_2__*,int,int *,int,size_t,int ) ;
 int hid_report_len (struct hid_report*) ;
 int kfree (int *) ;
 int memcpy (int *,int *,int ) ;
 int min (int,int) ;

__attribute__((used)) static int steam_recv_report(struct steam_device *steam,
  u8 *data, int size)
{
 struct hid_report *r;
 u8 *buf;
 int ret;

 r = steam->hdev->report_enum[HID_FEATURE_REPORT].report_id_hash[0];
 if (hid_report_len(r) < 64)
  return -EINVAL;

 buf = hid_alloc_report_buf(r, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;







 ret = hid_hw_raw_request(steam->hdev, 0x00,
   buf, hid_report_len(r) + 1,
   HID_FEATURE_REPORT, HID_REQ_GET_REPORT);
 if (ret > 0)
  memcpy(data, buf + 1, min(size, ret - 1));
 kfree(buf);
 return ret;
}
