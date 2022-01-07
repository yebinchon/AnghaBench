
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt_report_data {int is_mt_collection; int list; int application; struct hid_report* report; } ;
struct mt_device {int reports; TYPE_1__* hdev; } ;
struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {int flags; int report_count; TYPE_2__* usage; } ;
struct TYPE_4__ {scalar_t__ hid; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ HID_DG_CONTACTID ;
 int HID_MAIN_ITEM_VARIABLE ;
 int devm_kfree (int *,struct mt_report_data*) ;
 struct mt_report_data* devm_kzalloc (int *,int,int ) ;
 int list_add_tail (int *,int *) ;
 int mt_find_application (struct mt_device*,struct hid_report*) ;

__attribute__((used)) static struct mt_report_data *mt_allocate_report_data(struct mt_device *td,
            struct hid_report *report)
{
 struct mt_report_data *rdata;
 struct hid_field *field;
 int r, n;

 rdata = devm_kzalloc(&td->hdev->dev, sizeof(*rdata), GFP_KERNEL);
 if (!rdata)
  return ((void*)0);

 rdata->report = report;
 rdata->application = mt_find_application(td, report);

 if (!rdata->application) {
  devm_kfree(&td->hdev->dev, rdata);
  return ((void*)0);
 }

 for (r = 0; r < report->maxfield; r++) {
  field = report->field[r];

  if (!(HID_MAIN_ITEM_VARIABLE & field->flags))
   continue;

  for (n = 0; n < field->report_count; n++) {
   if (field->usage[n].hid == HID_DG_CONTACTID)
    rdata->is_mt_collection = 1;
  }
 }

 list_add_tail(&rdata->list, &td->reports);

 return rdata;
}
