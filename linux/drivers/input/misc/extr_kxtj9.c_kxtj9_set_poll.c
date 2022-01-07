
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_interval; } ;
struct kxtj9_data {int last_poll_interval; TYPE_1__ pdata; struct input_dev* input_dev; } ;
struct input_dev {int mutex; } ;
struct i2c_client {int irq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct kxtj9_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int kxtj9_update_odr (struct kxtj9_data*,int ) ;
 int max (unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t kxtj9_set_poll(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct kxtj9_data *tj9 = i2c_get_clientdata(client);
 struct input_dev *input_dev = tj9->input_dev;
 unsigned int interval;
 int error;

 error = kstrtouint(buf, 10, &interval);
 if (error < 0)
  return error;


 mutex_lock(&input_dev->mutex);

 disable_irq(client->irq);





 tj9->last_poll_interval = max(interval, tj9->pdata.min_interval);

 kxtj9_update_odr(tj9, tj9->last_poll_interval);

 enable_irq(client->irq);
 mutex_unlock(&input_dev->mutex);

 return count;
}
