
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6683_data {int valid; int in_num; int temp_num; int have_fan; int update_lock; scalar_t__ last_updated; void** fan_min; void** rpm; void*** temp; void** temp_in; int * temp_index; void*** in; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (void**) ;
 scalar_t__ HZ ;
 int NCT6683_REG_FAN_MIN (int) ;
 int NCT6683_REG_FAN_RPM (int) ;
 int NCT6683_REG_MON (int ) ;
 struct nct6683_data* dev_get_drvdata (struct device*) ;
 int get_in_reg (struct nct6683_data*,int,int) ;
 int get_temp_reg (struct nct6683_data*,int,int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* nct6683_read (struct nct6683_data*,int) ;
 void* nct6683_read16 (struct nct6683_data*,int ) ;
 int nct6683_update_pwm (struct device*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct nct6683_data *nct6683_update_device(struct device *dev)
{
 struct nct6683_data *data = dev_get_drvdata(dev);
 int i, j;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {

  for (i = 0; i < data->in_num; i++) {
   for (j = 0; j < 3; j++) {
    int reg = get_in_reg(data, j, i);

    if (reg >= 0)
     data->in[j][i] =
      nct6683_read(data, reg);
   }
  }


  for (i = 0; i < data->temp_num; i++) {
   u8 ch = data->temp_index[i];

   data->temp_in[i] = nct6683_read16(data,
         NCT6683_REG_MON(ch));
   for (j = 0; j < 4; j++) {
    int reg = get_temp_reg(data, j, i);

    if (reg >= 0)
     data->temp[j][i] =
      nct6683_read(data, reg);
   }
  }


  for (i = 0; i < ARRAY_SIZE(data->rpm); i++) {
   if (!(data->have_fan & (1 << i)))
    continue;

   data->rpm[i] = nct6683_read16(data,
      NCT6683_REG_FAN_RPM(i));
   data->fan_min[i] = nct6683_read16(data,
      NCT6683_REG_FAN_MIN(i));
  }

  nct6683_update_pwm(dev);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);
 return data;
}
