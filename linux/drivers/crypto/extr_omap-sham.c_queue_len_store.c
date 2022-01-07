
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long max_qlen; } ;
struct omap_sham_dev {int lock; TYPE_1__ queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct omap_sham_dev* dev_get_drvdata (struct device*) ;
 size_t kstrtol (char const*,int ,long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t queue_len_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t size)
{
 struct omap_sham_dev *dd = dev_get_drvdata(dev);
 ssize_t status;
 long value;
 unsigned long flags;

 status = kstrtol(buf, 0, &value);
 if (status)
  return status;

 if (value < 1)
  return -EINVAL;






 spin_lock_irqsave(&dd->lock, flags);
 dd->queue.max_qlen = value;
 spin_unlock_irqrestore(&dd->lock, flags);

 return size;
}
