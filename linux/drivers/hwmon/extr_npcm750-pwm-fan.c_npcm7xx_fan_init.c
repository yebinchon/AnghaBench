
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct npcm7xx_pwm_fan_data {int input_clk_freq; int fan_clk; TYPE_1__* fan_dev; int fan_base; } ;
struct TYPE_2__ {scalar_t__ fan_cnt; int fan_pls_per_rev; int fan_st_flg; } ;


 int FAN_DISABLE ;
 int NPCM7XX_FAN_CLK_PRESCALE ;
 int NPCM7XX_FAN_DEFAULT_PULSE_PER_REVOLUTION ;
 int NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE ;
 int NPCM7XX_FAN_MAX_MODULE ;
 int NPCM7XX_FAN_REG_TCKC (int ,int) ;
 int NPCM7XX_FAN_REG_TCNT1 (int ,int) ;
 int NPCM7XX_FAN_REG_TCNT2 (int ,int) ;
 int NPCM7XX_FAN_REG_TCPA (int ,int) ;
 int NPCM7XX_FAN_REG_TCPB (int ,int) ;
 int NPCM7XX_FAN_REG_TCPCFG (int ,int) ;
 int NPCM7XX_FAN_REG_TICLR (int ,int) ;
 int NPCM7XX_FAN_REG_TIEN (int ,int) ;
 int NPCM7XX_FAN_REG_TINASEL (int ,int) ;
 int NPCM7XX_FAN_REG_TINBSEL (int ,int) ;
 int NPCM7XX_FAN_REG_TMCTRL (int ,int) ;
 int NPCM7XX_FAN_REG_TPRSC (int ,int) ;
 int NPCM7XX_FAN_TCKC_CLKX_NONE ;
 int NPCM7XX_FAN_TCNT ;
 int NPCM7XX_FAN_TCPA ;
 int NPCM7XX_FAN_TCPB ;
 int NPCM7XX_FAN_TCPCFG_EQAEN ;
 int NPCM7XX_FAN_TCPCFG_EQBEN ;
 int NPCM7XX_FAN_TICLR_CLEAR_ALL ;
 int NPCM7XX_FAN_TINASEL_FANIN_DEFAULT ;
 int NPCM7XX_FAN_TMCTRL_MODE_5 ;
 int NPCM7XX_FAN_TMCTRL_TAEN ;
 int NPCM7XX_FAN_TMCTRL_TBEN ;
 int clk_get_rate (int ) ;
 int iowrite16 (int ,int ) ;
 int iowrite8 (int,int ) ;

__attribute__((used)) static void npcm7xx_fan_init(struct npcm7xx_pwm_fan_data *data)
{
 int md;
 int ch;
 int i;
 u32 apb_clk_freq;

 for (md = 0; md < NPCM7XX_FAN_MAX_MODULE; md++) {

  iowrite8(NPCM7XX_FAN_TCKC_CLKX_NONE,
    NPCM7XX_FAN_REG_TCKC(data->fan_base, md));


  iowrite8(0x00, NPCM7XX_FAN_REG_TIEN(data->fan_base, md));


  iowrite8(NPCM7XX_FAN_TICLR_CLEAR_ALL,
    NPCM7XX_FAN_REG_TICLR(data->fan_base, md));


  iowrite8(NPCM7XX_FAN_CLK_PRESCALE,
    NPCM7XX_FAN_REG_TPRSC(data->fan_base, md));


  iowrite8((NPCM7XX_FAN_TMCTRL_MODE_5 | NPCM7XX_FAN_TMCTRL_TBEN |
     NPCM7XX_FAN_TMCTRL_TAEN),
    NPCM7XX_FAN_REG_TMCTRL(data->fan_base, md));


  iowrite16(NPCM7XX_FAN_TCNT,
     NPCM7XX_FAN_REG_TCNT1(data->fan_base, md));
  iowrite16(NPCM7XX_FAN_TCNT,
     NPCM7XX_FAN_REG_TCNT2(data->fan_base, md));


  iowrite8((NPCM7XX_FAN_TCPCFG_EQAEN | NPCM7XX_FAN_TCPCFG_EQBEN),
    NPCM7XX_FAN_REG_TCPCFG(data->fan_base, md));


  iowrite16(NPCM7XX_FAN_TCPA,
     NPCM7XX_FAN_REG_TCPA(data->fan_base, md));
  iowrite16(NPCM7XX_FAN_TCPB,
     NPCM7XX_FAN_REG_TCPB(data->fan_base, md));


  iowrite8(NPCM7XX_FAN_TINASEL_FANIN_DEFAULT,
    NPCM7XX_FAN_REG_TINASEL(data->fan_base, md));
  iowrite8(NPCM7XX_FAN_TINASEL_FANIN_DEFAULT,
    NPCM7XX_FAN_REG_TINBSEL(data->fan_base, md));

  for (i = 0; i < NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE; i++) {
   ch = md * NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE + i;
   data->fan_dev[ch].fan_st_flg = FAN_DISABLE;
   data->fan_dev[ch].fan_pls_per_rev =
    NPCM7XX_FAN_DEFAULT_PULSE_PER_REVOLUTION;
   data->fan_dev[ch].fan_cnt = 0;
  }
 }

 apb_clk_freq = clk_get_rate(data->fan_clk);


 data->input_clk_freq = apb_clk_freq / (NPCM7XX_FAN_CLK_PRESCALE + 1);
}
