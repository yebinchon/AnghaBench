
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
struct hmc5843_data {int lock; int regmap; } ;
typedef int __be16 ;


 int HMC5843_DATA_OUT_MSB_REGS ;
 int IIO_VAL_INT ;
 int be16_to_cpu (int ) ;
 int hmc5843_wait_measurement (struct hmc5843_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int hmc5843_read_measurement(struct hmc5843_data *data,
        int idx, int *val)
{
 __be16 values[3];
 int ret;

 mutex_lock(&data->lock);
 ret = hmc5843_wait_measurement(data);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  return ret;
 }
 ret = regmap_bulk_read(data->regmap, HMC5843_DATA_OUT_MSB_REGS,
          values, sizeof(values));
 mutex_unlock(&data->lock);
 if (ret < 0)
  return ret;

 *val = sign_extend32(be16_to_cpu(values[idx]), 15);
 return IIO_VAL_INT;
}
