
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl29028_chip {int prox_sampling_frac; int prox_sampling_int; int regmap; } ;
struct TYPE_2__ {int sleep_time; } ;


 int ISL29028_CONF_PROX_EN ;
 int ISL29028_CONF_PROX_EN_MASK ;
 int ISL29028_REG_CONFIGURE ;
 int isl29028_find_prox_sleep_index (int ,int ) ;
 TYPE_1__* isl29028_prox_data ;
 int isl29028_set_proxim_sampling (struct isl29028_chip*,int ,int ) ;
 int msleep (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int isl29028_enable_proximity(struct isl29028_chip *chip)
{
 int prox_index, ret;

 ret = isl29028_set_proxim_sampling(chip, chip->prox_sampling_int,
        chip->prox_sampling_frac);
 if (ret < 0)
  return ret;

 ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
     ISL29028_CONF_PROX_EN_MASK,
     ISL29028_CONF_PROX_EN);
 if (ret < 0)
  return ret;


 prox_index = isl29028_find_prox_sleep_index(chip->prox_sampling_int,
          chip->prox_sampling_frac);
 if (prox_index < 0)
  return prox_index;

 msleep(isl29028_prox_data[prox_index].sleep_time);

 return 0;
}
