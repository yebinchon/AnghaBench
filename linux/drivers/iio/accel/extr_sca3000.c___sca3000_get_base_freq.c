
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; } ;
struct sca3000_chip_info {int measurement_mode_freq; int option_mode_1_freq; int option_mode_2_freq; } ;


 int EINVAL ;
 int SCA3000_REG_MODE_ADDR ;



 int SCA3000_REG_MODE_MODE_MASK ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;

__attribute__((used)) static inline int __sca3000_get_base_freq(struct sca3000_state *st,
       const struct sca3000_chip_info *info,
       int *base_freq)
{
 int ret;

 ret = sca3000_read_data_short(st, SCA3000_REG_MODE_ADDR, 1);
 if (ret)
  goto error_ret;
 switch (SCA3000_REG_MODE_MODE_MASK & st->rx[0]) {
 case 130:
  *base_freq = info->measurement_mode_freq;
  break;
 case 129:
  *base_freq = info->option_mode_1_freq;
  break;
 case 128:
  *base_freq = info->option_mode_2_freq;
  break;
 default:
  ret = -EINVAL;
 }
error_ret:
 return ret;
}
