
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nct7802_data {int access_lock; int regmap; } ;
typedef int s16 ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int nct7802_read_temp(struct nct7802_data *data,
        u8 reg_temp, u8 reg_temp_low, int *temp)
{
 unsigned int t1, t2 = 0;
 int err;

 *temp = 0;

 mutex_lock(&data->access_lock);
 err = regmap_read(data->regmap, reg_temp, &t1);
 if (err < 0)
  goto abort;
 t1 <<= 8;
 if (reg_temp_low) {
  err = regmap_read(data->regmap, reg_temp_low, &t2);
  if (err < 0)
   goto abort;
 }
 t1 |= t2 & 0xe0;
 *temp = (s16)t1 / 32 * 125;
abort:
 mutex_unlock(&data->access_lock);
 return err;
}
