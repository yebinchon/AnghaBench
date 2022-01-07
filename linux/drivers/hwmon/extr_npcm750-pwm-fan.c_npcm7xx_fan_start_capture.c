
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct npcm7xx_pwm_fan_data {int * fan_lock; int fan_base; TYPE_1__* fan_dev; } ;
struct TYPE_2__ {scalar_t__ fan_st_flg; } ;


 scalar_t__ FAN_DISABLE ;
 scalar_t__ FAN_INIT ;
 size_t NPCM7XX_FAN_CMPA ;
 size_t NPCM7XX_FAN_INPUT (size_t,size_t) ;
 int NPCM7XX_FAN_REG_TCKC (int ,size_t) ;
 int NPCM7XX_FAN_REG_TIEN (int ,size_t) ;
 size_t NPCM7XX_FAN_TCKC_CLK1_APB ;
 size_t NPCM7XX_FAN_TCKC_CLK2_APB ;
 size_t NPCM7XX_FAN_TIEN_TAIEN ;
 size_t NPCM7XX_FAN_TIEN_TBIEN ;
 size_t NPCM7XX_FAN_TIEN_TEIEN ;
 size_t NPCM7XX_FAN_TIEN_TFIEN ;
 size_t ioread8 (int ) ;
 int iowrite8 (size_t,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void npcm7xx_fan_start_capture(struct npcm7xx_pwm_fan_data *data,
          u8 fan, u8 cmp)
{
 u8 fan_id;
 u8 reg_mode;
 u8 reg_int;
 unsigned long flags;

 fan_id = NPCM7XX_FAN_INPUT(fan, cmp);


 if (data->fan_dev[fan_id].fan_st_flg != FAN_DISABLE) {

  spin_lock_irqsave(&data->fan_lock[fan], flags);

  data->fan_dev[fan_id].fan_st_flg = FAN_INIT;
  reg_int = ioread8(NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));







  if (cmp == NPCM7XX_FAN_CMPA) {

   iowrite8(reg_int | (NPCM7XX_FAN_TIEN_TAIEN |
         NPCM7XX_FAN_TIEN_TEIEN),
     NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));

   reg_mode = NPCM7XX_FAN_TCKC_CLK1_APB
    | ioread8(NPCM7XX_FAN_REG_TCKC(data->fan_base,
              fan));


   iowrite8(reg_mode, NPCM7XX_FAN_REG_TCKC(data->fan_base,
        fan));
  } else {

   iowrite8(reg_int | (NPCM7XX_FAN_TIEN_TBIEN |
         NPCM7XX_FAN_TIEN_TFIEN),
     NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));

   reg_mode =
    NPCM7XX_FAN_TCKC_CLK2_APB
    | ioread8(NPCM7XX_FAN_REG_TCKC(data->fan_base,
              fan));


   iowrite8(reg_mode,
     NPCM7XX_FAN_REG_TCKC(data->fan_base, fan));
  }

  spin_unlock_irqrestore(&data->fan_lock[fan], flags);
 }
}
