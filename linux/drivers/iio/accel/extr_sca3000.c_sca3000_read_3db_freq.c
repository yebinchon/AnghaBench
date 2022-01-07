
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sca3000_state {int* rx; TYPE_1__* info; } ;
struct TYPE_2__ {int measurement_mode_3db_freq; int option_mode_1_3db_freq; int option_mode_2_3db_freq; } ;


 int EBUSY ;
 int EINVAL ;
 int IIO_VAL_INT ;
 int SCA3000_REG_MODE_ADDR ;




 int SCA3000_REG_MODE_MODE_MASK ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_read_3db_freq(struct sca3000_state *st, int *val)
{
 int ret;

 ret = sca3000_read_data_short(st, SCA3000_REG_MODE_ADDR, 1);
 if (ret)
  return ret;


 st->rx[0] &= SCA3000_REG_MODE_MODE_MASK;
 switch (st->rx[0]) {
 case 130:
  *val = st->info->measurement_mode_3db_freq;
  return IIO_VAL_INT;
 case 131:
  return -EBUSY;
 case 129:
  *val = st->info->option_mode_1_3db_freq;
  return IIO_VAL_INT;
 case 128:
  *val = st->info->option_mode_2_3db_freq;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
