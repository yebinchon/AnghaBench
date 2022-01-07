
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rm3100_data {int lock; struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int BIT (int) ;
 int IIO_VAL_INT ;
 scalar_t__ RM3100_REG_MX2 ;
 int RM3100_REG_POLL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (struct regmap*,scalar_t__,int*,int) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int rm3100_wait_measurement (struct rm3100_data*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int rm3100_read_mag(struct rm3100_data *data, int idx, int *val)
{
 struct regmap *regmap = data->regmap;
 u8 buffer[3];
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_write(regmap, RM3100_REG_POLL, BIT(4 + idx));
 if (ret < 0)
  goto unlock_return;

 ret = rm3100_wait_measurement(data);
 if (ret < 0)
  goto unlock_return;

 ret = regmap_bulk_read(regmap, RM3100_REG_MX2 + 3 * idx, buffer, 3);
 if (ret < 0)
  goto unlock_return;
 mutex_unlock(&data->lock);

 *val = sign_extend32((buffer[0] << 16) | (buffer[1] << 8) | buffer[2],
        23);

 return IIO_VAL_INT;

unlock_return:
 mutex_unlock(&data->lock);
 return ret;
}
