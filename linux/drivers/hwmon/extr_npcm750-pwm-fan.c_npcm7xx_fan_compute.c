
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct npcm7xx_pwm_fan_data {int fan_base; TYPE_1__* fan_dev; } ;
struct TYPE_2__ {scalar_t__ fan_st_flg; int fan_cnt_tmp; int fan_cnt; } ;


 int FAN_ENOUGH_SAMPLE ;
 scalar_t__ FAN_INIT ;
 scalar_t__ FAN_PREPARE_TO_GET_FIRST_CAPTURE ;
 scalar_t__ NPCM7XX_FAN_CMPA ;
 int NPCM7XX_FAN_REG_TCKC (int ,scalar_t__) ;
 int NPCM7XX_FAN_REG_TCRA (int ,scalar_t__) ;
 int NPCM7XX_FAN_REG_TCRB (int ,scalar_t__) ;
 int NPCM7XX_FAN_REG_TICLR (int ,scalar_t__) ;
 int NPCM7XX_FAN_REG_TIEN (int ,scalar_t__) ;
 scalar_t__ NPCM7XX_FAN_TCNT ;
 scalar_t__ ioread16 (int ) ;
 scalar_t__ ioread8 (int ) ;
 int iowrite8 (scalar_t__,int ) ;

__attribute__((used)) static inline void npcm7xx_fan_compute(struct npcm7xx_pwm_fan_data *data,
           u8 fan, u8 cmp, u8 fan_id, u8 flag_int,
           u8 flag_mode, u8 flag_clear)
{
 u8 reg_int;
 u8 reg_mode;
 u16 fan_cap;

 if (cmp == NPCM7XX_FAN_CMPA)
  fan_cap = ioread16(NPCM7XX_FAN_REG_TCRA(data->fan_base, fan));
 else
  fan_cap = ioread16(NPCM7XX_FAN_REG_TCRB(data->fan_base, fan));


 iowrite8(flag_clear, NPCM7XX_FAN_REG_TICLR(data->fan_base, fan));

 if (data->fan_dev[fan_id].fan_st_flg == FAN_INIT) {

  data->fan_dev[fan_id].fan_st_flg =
   FAN_PREPARE_TO_GET_FIRST_CAPTURE;


  data->fan_dev[fan_id].fan_cnt_tmp = 0;
 } else if (data->fan_dev[fan_id].fan_st_flg < FAN_ENOUGH_SAMPLE) {




  data->fan_dev[fan_id].fan_cnt_tmp +=
   (NPCM7XX_FAN_TCNT - fan_cap);

  data->fan_dev[fan_id].fan_st_flg++;
 } else {

  if (data->fan_dev[fan_id].fan_st_flg == FAN_ENOUGH_SAMPLE) {
   data->fan_dev[fan_id].fan_cnt_tmp +=
    (NPCM7XX_FAN_TCNT - fan_cap);


   data->fan_dev[fan_id].fan_cnt =
    data->fan_dev[fan_id].fan_cnt_tmp /
    FAN_ENOUGH_SAMPLE;

   data->fan_dev[fan_id].fan_st_flg = FAN_INIT;
  }

  reg_int = ioread8(NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));


  iowrite8((reg_int & ~flag_int),
    NPCM7XX_FAN_REG_TIEN(data->fan_base, fan));
  reg_mode = ioread8(NPCM7XX_FAN_REG_TCKC(data->fan_base, fan));


  iowrite8((reg_mode & ~flag_mode),
    NPCM7XX_FAN_REG_TCKC(data->fan_base, fan));
 }
}
