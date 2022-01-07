
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int state_sync_lock; TYPE_1__* ops; scalar_t__ operational; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* calibrate_store ) (struct device*,struct device_attribute*,char const*,size_t) ;} ;


 int EBUSY ;
 int cyapa_disable_irq_for_cmd (struct cyapa*) ;
 int cyapa_enable_irq_for_cmd (struct cyapa*) ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct device*,struct device_attribute*,char const*,size_t) ;

__attribute__((used)) static ssize_t cyapa_calibrate_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 int error;

 error = mutex_lock_interruptible(&cyapa->state_sync_lock);
 if (error)
  return error;

 if (cyapa->operational) {
  cyapa_enable_irq_for_cmd(cyapa);
  error = cyapa->ops->calibrate_store(dev, attr, buf, count);
  cyapa_disable_irq_for_cmd(cyapa);
 } else {
  error = -EBUSY;
 }

 mutex_unlock(&cyapa->state_sync_lock);
 return error < 0 ? error : count;
}
