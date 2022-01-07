
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hmc5843_data {int lock; int regmap; } ;


 int HMC5843_CONFIG_REG_A ;
 int HMC5843_RATE_MASK ;
 int HMC5843_RATE_OFFSET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int hmc5843_set_samp_freq(struct hmc5843_data *data, u8 rate)
{
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_update_bits(data->regmap, HMC5843_CONFIG_REG_A,
     HMC5843_RATE_MASK,
     rate << HMC5843_RATE_OFFSET);
 mutex_unlock(&data->lock);

 return ret;
}
