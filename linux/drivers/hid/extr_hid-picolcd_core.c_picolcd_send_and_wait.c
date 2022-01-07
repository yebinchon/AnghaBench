
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct picolcd_pending {int ready; scalar_t__ raw_size; int * in_report; struct hid_report* out_report; } ;
struct picolcd_data {int status; int mutex; int lock; struct picolcd_pending* pending; int hdev; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int report_count; } ;


 int GFP_KERNEL ;
 int HID_REQ_SET_REPORT ;
 int HZ ;
 int PICOLCD_FAILED ;
 struct picolcd_data* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_set_field (TYPE_1__*,int,int const) ;
 int init_completion (int *) ;
 int kfree (struct picolcd_pending*) ;
 struct picolcd_pending* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hid_report* picolcd_out_report (int,struct hid_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

struct picolcd_pending *picolcd_send_and_wait(struct hid_device *hdev,
  int report_id, const u8 *raw_data, int size)
{
 struct picolcd_data *data = hid_get_drvdata(hdev);
 struct picolcd_pending *work;
 struct hid_report *report = picolcd_out_report(report_id, hdev);
 unsigned long flags;
 int i, j, k;

 if (!report || !data)
  return ((void*)0);
 if (data->status & PICOLCD_FAILED)
  return ((void*)0);
 work = kzalloc(sizeof(*work), GFP_KERNEL);
 if (!work)
  return ((void*)0);

 init_completion(&work->ready);
 work->out_report = report;
 work->in_report = ((void*)0);
 work->raw_size = 0;

 mutex_lock(&data->mutex);
 spin_lock_irqsave(&data->lock, flags);
 for (i = k = 0; i < report->maxfield; i++)
  for (j = 0; j < report->field[i]->report_count; j++) {
   hid_set_field(report->field[i], j, k < size ? raw_data[k] : 0);
   k++;
  }
 if (data->status & PICOLCD_FAILED) {
  kfree(work);
  work = ((void*)0);
 } else {
  data->pending = work;
  hid_hw_request(data->hdev, report, HID_REQ_SET_REPORT);
  spin_unlock_irqrestore(&data->lock, flags);
  wait_for_completion_interruptible_timeout(&work->ready, HZ*2);
  spin_lock_irqsave(&data->lock, flags);
  data->pending = ((void*)0);
 }
 spin_unlock_irqrestore(&data->lock, flags);
 mutex_unlock(&data->mutex);
 return work;
}
