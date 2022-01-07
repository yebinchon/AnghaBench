
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hmc5843_data {int lock; int regmap; } ;
typedef int s32 ;


 int HMC5843_MODE_MASK ;
 int HMC5843_MODE_REG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static s32 hmc5843_set_mode(struct hmc5843_data *data, u8 operating_mode)
{
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_update_bits(data->regmap, HMC5843_MODE_REG,
     HMC5843_MODE_MASK, operating_mode);
 mutex_unlock(&data->lock);

 return ret;
}
