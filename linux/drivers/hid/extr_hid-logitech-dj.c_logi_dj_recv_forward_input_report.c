
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hid_device {int dummy; } ;
struct dj_receiver_dev {int lock; struct dj_device** paired_dj_devices; } ;
struct dj_device {int reports_supported; } ;


 int BIT (scalar_t__) ;
 int DJ_DEVICE_INDEX_MIN ;
 int DJ_MAX_PAIRED_DEVICES ;
 scalar_t__ REPORT_TYPE_RFREPORT_LAST ;
 int dbg_hid (char*,scalar_t__) ;
 int hid_err (struct hid_device*,char*,scalar_t__) ;
 struct dj_receiver_dev* hid_get_drvdata (struct hid_device*) ;
 int logi_dj_recv_forward_report (struct dj_device*,scalar_t__*,int) ;
 int logi_dj_recv_queue_unknown_work (struct dj_receiver_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void logi_dj_recv_forward_input_report(struct hid_device *hdev,
           u8 *data, int size)
{
 struct dj_receiver_dev *djrcv_dev = hid_get_drvdata(hdev);
 struct dj_device *dj_dev;
 unsigned long flags;
 u8 report = data[0];
 int i;

 if (report > REPORT_TYPE_RFREPORT_LAST) {
  hid_err(hdev, "Unexpected input report number %d\n", report);
  return;
 }

 spin_lock_irqsave(&djrcv_dev->lock, flags);
 for (i = 0; i < (DJ_MAX_PAIRED_DEVICES + DJ_DEVICE_INDEX_MIN); i++) {
  dj_dev = djrcv_dev->paired_dj_devices[i];
  if (dj_dev && (dj_dev->reports_supported & BIT(report))) {
   logi_dj_recv_forward_report(dj_dev, data, size);
   spin_unlock_irqrestore(&djrcv_dev->lock, flags);
   return;
  }
 }

 logi_dj_recv_queue_unknown_work(djrcv_dev);
 spin_unlock_irqrestore(&djrcv_dev->lock, flags);

 dbg_hid("No dj-devs handling input report number %d\n", report);
}
