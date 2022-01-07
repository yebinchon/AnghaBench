
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sca3000_state {int* rx; TYPE_1__* info; } ;
struct TYPE_2__ {int measurement_mode_3db_freq; int option_mode_1_3db_freq; int option_mode_2_3db_freq; scalar_t__ option_mode_2; scalar_t__ option_mode_1; } ;


 int EINVAL ;
 int SCA3000_REG_MODE_ADDR ;
 int SCA3000_REG_MODE_MEAS_MODE_NORMAL ;
 int SCA3000_REG_MODE_MEAS_MODE_OP_1 ;
 int SCA3000_REG_MODE_MEAS_MODE_OP_2 ;
 int SCA3000_REG_MODE_MODE_MASK ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_write_3db_freq(struct sca3000_state *st, int val)
{
 int ret;
 int mode;

 if (val == st->info->measurement_mode_3db_freq)
  mode = SCA3000_REG_MODE_MEAS_MODE_NORMAL;
 else if (st->info->option_mode_1 &&
   (val == st->info->option_mode_1_3db_freq))
  mode = SCA3000_REG_MODE_MEAS_MODE_OP_1;
 else if (st->info->option_mode_2 &&
   (val == st->info->option_mode_2_3db_freq))
  mode = SCA3000_REG_MODE_MEAS_MODE_OP_2;
 else
  return -EINVAL;
 ret = sca3000_read_data_short(st, SCA3000_REG_MODE_ADDR, 1);
 if (ret)
  return ret;

 st->rx[0] &= ~SCA3000_REG_MODE_MODE_MASK;
 st->rx[0] |= (mode & SCA3000_REG_MODE_MODE_MASK);

 return sca3000_write_reg(st, SCA3000_REG_MODE_ADDR, st->rx[0]);
}
