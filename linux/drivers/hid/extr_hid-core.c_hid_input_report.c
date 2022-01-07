
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hid_report_enum {int dummy; } ;
struct hid_report {int dummy; } ;
struct hid_driver {int (* raw_event ) (struct hid_device*,struct hid_report*,int *,int ) ;} ;
struct hid_device {int driver_input_lock; int debug_list; struct hid_driver* driver; struct hid_report_enum* report_enum; } ;


 int EBUSY ;
 int ENODEV ;
 int dbg_hid (char*) ;
 scalar_t__ down_trylock (int *) ;
 int hid_dump_report (struct hid_device*,int,int *,int ) ;
 struct hid_report* hid_get_report (struct hid_report_enum*,int *) ;
 scalar_t__ hid_match_report (struct hid_device*,struct hid_report*) ;
 int hid_report_raw_event (struct hid_device*,int,int *,int ,int) ;
 int list_empty (int *) ;
 int stub1 (struct hid_device*,struct hid_report*,int *,int ) ;
 int up (int *) ;

int hid_input_report(struct hid_device *hid, int type, u8 *data, u32 size, int interrupt)
{
 struct hid_report_enum *report_enum;
 struct hid_driver *hdrv;
 struct hid_report *report;
 int ret = 0;

 if (!hid)
  return -ENODEV;

 if (down_trylock(&hid->driver_input_lock))
  return -EBUSY;

 if (!hid->driver) {
  ret = -ENODEV;
  goto unlock;
 }
 report_enum = hid->report_enum + type;
 hdrv = hid->driver;

 if (!size) {
  dbg_hid("empty report\n");
  ret = -1;
  goto unlock;
 }


 if (!list_empty(&hid->debug_list))
  hid_dump_report(hid, type, data, size);

 report = hid_get_report(report_enum, data);

 if (!report) {
  ret = -1;
  goto unlock;
 }

 if (hdrv && hdrv->raw_event && hid_match_report(hid, report)) {
  ret = hdrv->raw_event(hid, report, data, size);
  if (ret < 0)
   goto unlock;
 }

 ret = hid_report_raw_event(hid, type, data, size, interrupt);

unlock:
 up(&hid->driver_input_lock);
 return ret;
}
