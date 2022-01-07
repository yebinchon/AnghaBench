
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47b397_data {int valid; int* temp; int* fan; int update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;


 scalar_t__ HZ ;
 int SMSC47B397_REG_FAN_LSB (int) ;
 int SMSC47B397_REG_FAN_MSB (int) ;
 int SMSC47B397_REG_TEMP (int) ;
 int dev_dbg (struct device*,char*) ;
 struct smsc47b397_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smsc47b397_read_value (struct smsc47b397_data*,int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct smsc47b397_data *smsc47b397_update_device(struct device *dev)
{
 struct smsc47b397_data *data = dev_get_drvdata(dev);
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  dev_dbg(dev, "starting device update...\n");


  for (i = 0; i < 4; i++) {
   data->temp[i] = smsc47b397_read_value(data,
     SMSC47B397_REG_TEMP(i));


   data->fan[i] = smsc47b397_read_value(data,
     SMSC47B397_REG_FAN_LSB(i));
   data->fan[i] |= smsc47b397_read_value(data,
     SMSC47B397_REG_FAN_MSB(i)) << 8;
  }

  data->last_updated = jiffies;
  data->valid = 1;

  dev_dbg(dev, "... device update complete\n");
 }

 mutex_unlock(&data->update_lock);

 return data;
}
