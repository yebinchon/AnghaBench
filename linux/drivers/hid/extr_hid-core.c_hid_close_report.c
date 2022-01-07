
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report_enum {int report_list; struct hid_report** report_id_hash; } ;
struct hid_report {int dummy; } ;
struct hid_device {int status; scalar_t__ maxapplication; scalar_t__ maxcollection; scalar_t__ collection_size; int * collection; scalar_t__ rsize; int * rdesc; struct hid_report_enum* report_enum; } ;


 unsigned int HID_MAX_IDS ;
 unsigned int HID_REPORT_TYPES ;
 int HID_STAT_PARSED ;
 int INIT_LIST_HEAD (int *) ;
 int hid_free_report (struct hid_report*) ;
 int kfree (int *) ;
 int memset (struct hid_report_enum*,int ,int) ;

__attribute__((used)) static void hid_close_report(struct hid_device *device)
{
 unsigned i, j;

 for (i = 0; i < HID_REPORT_TYPES; i++) {
  struct hid_report_enum *report_enum = device->report_enum + i;

  for (j = 0; j < HID_MAX_IDS; j++) {
   struct hid_report *report = report_enum->report_id_hash[j];
   if (report)
    hid_free_report(report);
  }
  memset(report_enum, 0, sizeof(*report_enum));
  INIT_LIST_HEAD(&report_enum->report_list);
 }

 kfree(device->rdesc);
 device->rdesc = ((void*)0);
 device->rsize = 0;

 kfree(device->collection);
 device->collection = ((void*)0);
 device->collection_size = 0;
 device->maxcollection = 0;
 device->maxapplication = 0;

 device->status &= ~HID_STAT_PARSED;
}
