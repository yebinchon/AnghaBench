
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sony_sc {int lock; scalar_t__ ds4_bt_poll_interval; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ DS4_BT_MAX_POLL_INTERVAL_MS ;
 size_t EINVAL ;
 int SONY_WORKER_STATE ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ kstrtou8 (char const*,int ,scalar_t__*) ;
 int sony_schedule_work (struct sony_sc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t ds4_store_poll_interval(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct sony_sc *sc = hid_get_drvdata(hdev);
 unsigned long flags;
 u8 interval;

 if (kstrtou8(buf, 0, &interval))
  return -EINVAL;

 if (interval > DS4_BT_MAX_POLL_INTERVAL_MS)
  return -EINVAL;

 spin_lock_irqsave(&sc->lock, flags);
 sc->ds4_bt_poll_interval = interval;
 spin_unlock_irqrestore(&sc->lock, flags);

 sony_schedule_work(sc, SONY_WORKER_STATE);

 return count;
}
