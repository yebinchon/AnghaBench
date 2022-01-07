
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sensor_hub_data {int lock; } ;
struct TYPE_4__ {scalar_t__ attr_usage_id; int raw_size; int ready; scalar_t__ raw_data; scalar_t__ status; } ;
struct hid_sensor_hub_device {TYPE_1__ pending; } ;
struct hid_sensor_hub_callbacks {int pdev; int (* send_event ) (struct hid_sensor_hub_device*,int ,int ) ;int (* capture_sample ) (struct hid_sensor_hub_device*,scalar_t__,int,int *,int ) ;} ;
struct hid_report {scalar_t__ type; int maxfield; TYPE_3__** field; int id; } ;
struct hid_device {struct hid_collection* collection; } ;
struct hid_collection {int usage; } ;
struct TYPE_6__ {int report_size; int report_count; scalar_t__ logical; TYPE_2__* usage; int physical; } ;
struct TYPE_5__ {size_t collection_index; scalar_t__ hid; } ;


 int GFP_ATOMIC ;
 scalar_t__ HID_INPUT_REPORT ;
 int complete (int *) ;
 int hid_dbg (struct hid_device*,char*,...) ;
 struct sensor_hub_data* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ kmemdup (int *,int,int ) ;
 struct hid_sensor_hub_callbacks* sensor_hub_get_callback (struct hid_device*,int ,size_t,struct hid_sensor_hub_device**,void**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hid_sensor_hub_device*,scalar_t__,int,int *,int ) ;
 int stub2 (struct hid_sensor_hub_device*,scalar_t__,int,int *,int ) ;
 int stub3 (struct hid_sensor_hub_device*,int ,int ) ;

__attribute__((used)) static int sensor_hub_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *raw_data, int size)
{
 int i;
 u8 *ptr;
 int sz;
 struct sensor_hub_data *pdata = hid_get_drvdata(hdev);
 unsigned long flags;
 struct hid_sensor_hub_callbacks *callback = ((void*)0);
 struct hid_collection *collection = ((void*)0);
 void *priv = ((void*)0);
 struct hid_sensor_hub_device *hsdev = ((void*)0);

 hid_dbg(hdev, "sensor_hub_raw_event report id:0x%x size:%d type:%d\n",
    report->id, size, report->type);
 hid_dbg(hdev, "maxfield:%d\n", report->maxfield);
 if (report->type != HID_INPUT_REPORT)
  return 1;

 ptr = raw_data;
 ptr++;

 spin_lock_irqsave(&pdata->lock, flags);

 for (i = 0; i < report->maxfield; ++i) {
  hid_dbg(hdev, "%d collection_index:%x hid:%x sz:%x\n",
    i, report->field[i]->usage->collection_index,
    report->field[i]->usage->hid,
    (report->field[i]->report_size *
     report->field[i]->report_count)/8);
  sz = (report->field[i]->report_size *
     report->field[i]->report_count)/8;
  collection = &hdev->collection[
    report->field[i]->usage->collection_index];
  hid_dbg(hdev, "collection->usage %x\n",
     collection->usage);

  callback = sensor_hub_get_callback(hdev,
    report->field[i]->physical,
    report->field[i]->usage[0].collection_index,
    &hsdev, &priv);
  if (!callback) {
   ptr += sz;
   continue;
  }
  if (hsdev->pending.status && (hsdev->pending.attr_usage_id ==
           report->field[i]->usage->hid ||
           hsdev->pending.attr_usage_id ==
           report->field[i]->logical)) {
   hid_dbg(hdev, "data was pending ...\n");
   hsdev->pending.raw_data = kmemdup(ptr, sz, GFP_ATOMIC);
   if (hsdev->pending.raw_data)
    hsdev->pending.raw_size = sz;
   else
    hsdev->pending.raw_size = 0;
   complete(&hsdev->pending.ready);
  }
  if (callback->capture_sample) {
   if (report->field[i]->logical)
    callback->capture_sample(hsdev,
     report->field[i]->logical, sz, ptr,
     callback->pdev);
   else
    callback->capture_sample(hsdev,
     report->field[i]->usage->hid, sz, ptr,
     callback->pdev);
  }
  ptr += sz;
 }
 if (callback && collection && callback->send_event)
  callback->send_event(hsdev, collection->usage,
    callback->pdev);
 spin_unlock_irqrestore(&pdata->lock, flags);

 return 1;
}
