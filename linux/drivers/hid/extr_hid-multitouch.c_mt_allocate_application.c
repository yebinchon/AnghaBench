
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int quirks; } ;
struct mt_device {int applications; TYPE_2__ mtclass; int inputmode_value; TYPE_1__* hdev; } ;
struct mt_application {unsigned int application; int list; int report_id; int quirks; void* raw_cc; void* scantime; int mt_flags; int mt_usages; } ;
struct hid_report {unsigned int application; int id; } ;
struct TYPE_3__ {int dev; } ;


 void* DEFAULT_ZERO ;
 int GFP_KERNEL ;
 unsigned int HID_DG_TOUCHPAD ;
 unsigned int HID_DG_TOUCHSCREEN ;
 int INIT_LIST_HEAD (int *) ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_POINTER ;
 int MT_INPUTMODE_TOUCHPAD ;
 struct mt_application* devm_kzalloc (int *,int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct mt_application *mt_allocate_application(struct mt_device *td,
            struct hid_report *report)
{
 unsigned int application = report->application;
 struct mt_application *mt_application;

 mt_application = devm_kzalloc(&td->hdev->dev, sizeof(*mt_application),
          GFP_KERNEL);
 if (!mt_application)
  return ((void*)0);

 mt_application->application = application;
 INIT_LIST_HEAD(&mt_application->mt_usages);

 if (application == HID_DG_TOUCHSCREEN)
  mt_application->mt_flags |= INPUT_MT_DIRECT;




 if (application == HID_DG_TOUCHPAD) {
  mt_application->mt_flags |= INPUT_MT_POINTER;
  td->inputmode_value = MT_INPUTMODE_TOUCHPAD;
 }

 mt_application->scantime = DEFAULT_ZERO;
 mt_application->raw_cc = DEFAULT_ZERO;
 mt_application->quirks = td->mtclass.quirks;
 mt_application->report_id = report->id;

 list_add_tail(&mt_application->list, &td->applications);

 return mt_application;
}
