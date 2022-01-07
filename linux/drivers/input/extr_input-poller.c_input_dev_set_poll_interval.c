
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev_poller {unsigned int poll_interval_min; unsigned int poll_interval_max; unsigned int poll_interval; int work; } ;
struct input_dev {int mutex; scalar_t__ users; struct input_dev_poller* poller; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int cancel_delayed_work_sync (int *) ;
 int input_dev_poller_queue_work (struct input_dev_poller*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct input_dev* to_input_dev (struct device*) ;

__attribute__((used)) static ssize_t input_dev_set_poll_interval(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct input_dev *input = to_input_dev(dev);
 struct input_dev_poller *poller = input->poller;
 unsigned int interval;
 int err;

 err = kstrtouint(buf, 0, &interval);
 if (err)
  return err;

 if (interval < poller->poll_interval_min)
  return -EINVAL;

 if (interval > poller->poll_interval_max)
  return -EINVAL;

 mutex_lock(&input->mutex);

 poller->poll_interval = interval;

 if (input->users) {
  cancel_delayed_work_sync(&poller->work);
  if (poller->poll_interval > 0)
   input_dev_poller_queue_work(poller);
 }

 mutex_unlock(&input->mutex);

 return count;
}
