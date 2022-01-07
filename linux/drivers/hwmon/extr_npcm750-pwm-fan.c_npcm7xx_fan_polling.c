
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct npcm7xx_pwm_fan_data {int fan_select; TYPE_1__ fan_timer; int fan_base; scalar_t__* fan_present; } ;


 int NPCM7XX_FAN_CMPA ;
 int NPCM7XX_FAN_CMPB ;
 int NPCM7XX_FAN_MAX_MODULE ;
 int NPCM7XX_FAN_POLL_TIMER_200MS ;
 int NPCM7XX_FAN_REG_TCNT1 (int ,int) ;
 int NPCM7XX_FAN_REG_TCNT2 (int ,int) ;
 int NPCM7XX_FAN_REG_TICLR (int ,int) ;
 int NPCM7XX_FAN_TCNT ;
 int NPCM7XX_FAN_TICLR_CLEAR_ALL ;
 int add_timer (TYPE_1__*) ;
 int fan_timer ;
 struct npcm7xx_pwm_fan_data* from_timer (struct npcm7xx_pwm_fan_data*,struct timer_list*,int ) ;
 int iowrite16 (int ,int ) ;
 int iowrite8 (int ,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int npcm7xx_fan_start_capture (struct npcm7xx_pwm_fan_data*,int,int ) ;

__attribute__((used)) static void npcm7xx_fan_polling(struct timer_list *t)
{
 struct npcm7xx_pwm_fan_data *data;
 int i;

 data = from_timer(data, t, fan_timer);





 for (i = data->fan_select; i < NPCM7XX_FAN_MAX_MODULE;
       i = i + 4) {

  iowrite8(NPCM7XX_FAN_TICLR_CLEAR_ALL,
    NPCM7XX_FAN_REG_TICLR(data->fan_base, i));

  if (data->fan_present[i * 2]) {
   iowrite16(NPCM7XX_FAN_TCNT,
      NPCM7XX_FAN_REG_TCNT1(data->fan_base, i));
   npcm7xx_fan_start_capture(data, i, NPCM7XX_FAN_CMPA);
  }
  if (data->fan_present[(i * 2) + 1]) {
   iowrite16(NPCM7XX_FAN_TCNT,
      NPCM7XX_FAN_REG_TCNT2(data->fan_base, i));
   npcm7xx_fan_start_capture(data, i, NPCM7XX_FAN_CMPB);
  }
 }

 data->fan_select++;
 data->fan_select &= 0x3;


 data->fan_timer.expires = jiffies +
  msecs_to_jiffies(NPCM7XX_FAN_POLL_TIMER_200MS);
 add_timer(&data->fan_timer);
}
