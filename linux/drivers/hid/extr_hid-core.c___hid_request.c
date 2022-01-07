
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hid_report {int type; int id; } ;
struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* raw_request ) (struct hid_device*,int ,char*,int ,int ,int) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_REQ_GET_REPORT ;
 int HID_REQ_SET_REPORT ;
 int dbg_hid (char*,int) ;
 char* hid_alloc_report_buf (struct hid_report*,int ) ;
 int hid_input_report (struct hid_device*,int ,char*,int,int ) ;
 int hid_output_report (struct hid_report*,char*) ;
 int hid_report_len (struct hid_report*) ;
 int kfree (char*) ;
 int stub1 (struct hid_device*,int ,char*,int ,int ,int) ;

int __hid_request(struct hid_device *hid, struct hid_report *report,
  int reqtype)
{
 char *buf;
 int ret;
 u32 len;

 buf = hid_alloc_report_buf(report, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 len = hid_report_len(report);

 if (reqtype == HID_REQ_SET_REPORT)
  hid_output_report(report, buf);

 ret = hid->ll_driver->raw_request(hid, report->id, buf, len,
       report->type, reqtype);
 if (ret < 0) {
  dbg_hid("unable to complete request: %d\n", ret);
  goto out;
 }

 if (reqtype == HID_REQ_GET_REPORT)
  hid_input_report(hid, report->type, buf, ret, 0);

 ret = 0;

out:
 kfree(buf);
 return ret;
}
