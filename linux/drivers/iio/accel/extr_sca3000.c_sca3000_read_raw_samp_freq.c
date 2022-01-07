
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int info; } ;


 int SCA3000_REG_CTRL_SEL_OUT_CTRL ;


 int SCA3000_REG_OUT_CTRL_BUF_DIV_MASK ;
 int __sca3000_get_base_freq (struct sca3000_state*,int ,int*) ;
 int sca3000_read_ctrl_reg (struct sca3000_state*,int ) ;

__attribute__((used)) static int sca3000_read_raw_samp_freq(struct sca3000_state *st, int *val)
{
 int ret;

 ret = __sca3000_get_base_freq(st, st->info, val);
 if (ret)
  return ret;

 ret = sca3000_read_ctrl_reg(st, SCA3000_REG_CTRL_SEL_OUT_CTRL);
 if (ret < 0)
  return ret;

 if (*val > 0) {
  ret &= SCA3000_REG_OUT_CTRL_BUF_DIV_MASK;
  switch (ret) {
  case 129:
   *val /= 2;
   break;
  case 128:
   *val /= 4;
   break;
  }
 }

 return 0;
}
