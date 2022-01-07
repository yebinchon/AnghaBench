
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct npcm7xx_pwm_fan_data {TYPE_1__* fan_dev; int fan_base; } ;
struct TYPE_2__ {scalar_t__ fan_cnt; } ;


 scalar_t__ NPCM7XX_FAN_CMPA ;
 scalar_t__ NPCM7XX_FAN_INPUT (scalar_t__,scalar_t__) ;
 int NPCM7XX_FAN_REG_TCKC (int ,scalar_t__) ;
 int NPCM7XX_FAN_REG_TICLR (int ,scalar_t__) ;
 int NPCM7XX_FAN_REG_TIEN (int ,scalar_t__) ;
 scalar_t__ NPCM7XX_FAN_TCKC_CLK1_APB ;
 scalar_t__ NPCM7XX_FAN_TCKC_CLK2_APB ;
 scalar_t__ NPCM7XX_FAN_TICLR_TACLR ;
 scalar_t__ NPCM7XX_FAN_TICLR_TBCLR ;
 scalar_t__ NPCM7XX_FAN_TICLR_TECLR ;
 scalar_t__ NPCM7XX_FAN_TICLR_TFCLR ;
 scalar_t__ NPCM7XX_FAN_TICTRL_TAPND ;
 scalar_t__ NPCM7XX_FAN_TICTRL_TBPND ;
 scalar_t__ NPCM7XX_FAN_TICTRL_TEPND ;
 scalar_t__ NPCM7XX_FAN_TICTRL_TFPND ;
 scalar_t__ NPCM7XX_FAN_TIEN_TAIEN ;
 scalar_t__ NPCM7XX_FAN_TIEN_TBIEN ;
 scalar_t__ NPCM7XX_FAN_TIEN_TEIEN ;
 scalar_t__ NPCM7XX_FAN_TIEN_TFIEN ;
 scalar_t__ ioread8 (int ) ;
 int iowrite8 (scalar_t__,int ) ;
 int npcm7xx_fan_compute (struct npcm7xx_pwm_fan_data*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void npcm7xx_check_cmp(struct npcm7xx_pwm_fan_data *data,
         u8 fan, u8 cmp, u8 flag)
{
 u8 reg_int;
 u8 reg_mode;
 u8 flag_timeout;
 u8 flag_cap;
 u8 flag_clear;
 u8 flag_int;
 u8 flag_mode;
 u8 fan_id;

 fan_id = NPCM7XX_FAN_INPUT(fan, cmp);

 if (cmp == NPCM7XX_FAN_CMPA) {
  flag_cap = NPCM7XX_FAN_TICTRL_TAPND;
  flag_timeout = NPCM7XX_FAN_TICTRL_TEPND;
  flag_int = NPCM7XX_FAN_TIEN_TAIEN | NPCM7XX_FAN_TIEN_TEIEN;
  flag_mode = NPCM7XX_FAN_TCKC_CLK1_APB;
  flag_clear = NPCM7XX_FAN_TICLR_TACLR | NPCM7XX_FAN_TICLR_TECLR;
 } else {
  flag_cap = NPCM7XX_FAN_TICTRL_TBPND;
  flag_timeout = NPCM7XX_FAN_TICTRL_TFPND;
  flag_int = NPCM7XX_FAN_TIEN_TBIEN | NPCM7XX_FAN_TIEN_TFIEN;
  flag_mode = NPCM7XX_FAN_TCKC_CLK2_APB;
  flag_clear = NPCM7XX_FAN_TICLR_TBCLR | NPCM7XX_FAN_TICLR_TFCLR;
 }

 if (flag & flag_timeout) {
  reg_int = ioread8(NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));


  iowrite8((reg_int & ~flag_int),
    NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));


  iowrite8(flag_clear,
    NPCM7XX_FAN_REG_TICLR(data->fan_base, fan));

  reg_mode = ioread8(NPCM7XX_FAN_REG_TCKC(data->fan_base, fan));


  iowrite8((reg_mode & ~flag_mode),
    NPCM7XX_FAN_REG_TCKC(data->fan_base, fan));






  data->fan_dev[fan_id].fan_cnt = 0;
 } else {

  if (flag & flag_cap)
   npcm7xx_fan_compute(data, fan, cmp, fan_id, flag_int,
         flag_mode, flag_clear);
 }
}
