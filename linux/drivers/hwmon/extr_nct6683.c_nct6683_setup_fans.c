
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6683_data {int have_fan; int* fanin_cfg; int have_pwm; int* fanout_cfg; } ;


 int NCT6683_NUM_REG_FAN ;
 int NCT6683_NUM_REG_PWM ;
 int NCT6683_REG_FANIN_CFG (int) ;
 int NCT6683_REG_FANOUT_CFG (int) ;
 int nct6683_read (struct nct6683_data*,int ) ;

__attribute__((used)) static void
nct6683_setup_fans(struct nct6683_data *data)
{
 int i;
 u8 reg;

 for (i = 0; i < NCT6683_NUM_REG_FAN; i++) {
  reg = nct6683_read(data, NCT6683_REG_FANIN_CFG(i));
  if (reg & 0x80)
   data->have_fan |= 1 << i;
  data->fanin_cfg[i] = reg;
 }
 for (i = 0; i < NCT6683_NUM_REG_PWM; i++) {
  reg = nct6683_read(data, NCT6683_REG_FANOUT_CFG(i));
  if (reg & 0x80)
   data->have_pwm |= 1 << i;
  data->fanout_cfg[i] = reg;
 }
}
