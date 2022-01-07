
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lgdt3306a_state {TYPE_1__* cfg; } ;
struct dtv_frontend_properties {int modulation; } ;
struct TYPE_2__ {int vsb_if_khz; int qam_if_khz; } ;


 int EINVAL ;




 int dbg_info (char*,int,int) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int lgdt3306a_set_if(struct lgdt3306a_state *state,
      struct dtv_frontend_properties *p)
{
 int ret;
 u16 if_freq_khz;
 u8 nco1, nco2;

 switch (p->modulation) {
 case 128:
  if_freq_khz = state->cfg->vsb_if_khz;
  break;
 case 130:
 case 131:
 case 129:
  if_freq_khz = state->cfg->qam_if_khz;
  break;
 default:
  return -EINVAL;
 }

 switch (if_freq_khz) {
 default:
  pr_warn("IF=%d KHz is not supported, 3250 assumed\n",
   if_freq_khz);

 case 3250:
  nco1 = 0x34;
  nco2 = 0x00;
  break;
 case 3500:
  nco1 = 0x38;
  nco2 = 0x00;
  break;
 case 4000:
  nco1 = 0x40;
  nco2 = 0x00;
  break;
 case 5000:
  nco1 = 0x50;
  nco2 = 0x00;
  break;
 case 5380:
  nco1 = 0x56;
  nco2 = 0x14;
  break;
 }
 ret = lgdt3306a_write_reg(state, 0x0010, nco1);
 if (ret)
  return ret;
 ret = lgdt3306a_write_reg(state, 0x0011, nco2);
 if (ret)
  return ret;

 dbg_info("if_freq=%d KHz->[%04x]\n", if_freq_khz, nco1<<8 | nco2);

 return 0;
}
