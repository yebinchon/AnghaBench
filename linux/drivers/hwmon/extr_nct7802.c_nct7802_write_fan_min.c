
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct7802_data {int access_lock; int regmap; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned int,unsigned long) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,unsigned long) ;

__attribute__((used)) static int nct7802_write_fan_min(struct nct7802_data *data, u8 reg_fan_low,
     u8 reg_fan_high, unsigned long limit)
{
 int err;

 if (limit)
  limit = DIV_ROUND_CLOSEST(1350000U, limit);
 else
  limit = 0x1fff;
 limit = clamp_val(limit, 0, 0x1fff);

 mutex_lock(&data->access_lock);
 err = regmap_write(data->regmap, reg_fan_low, limit & 0xff);
 if (err < 0)
  goto abort;

 err = regmap_write(data->regmap, reg_fan_high, (limit & 0x1f00) >> 5);
abort:
 mutex_unlock(&data->access_lock);
 return err;
}
