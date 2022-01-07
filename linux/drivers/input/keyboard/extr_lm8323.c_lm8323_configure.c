
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_chip {int size_x; int size_y; int debounce_time; int active_time; } ;


 int CLK_RCPWM_EXTERNAL ;
 int CLK_SLOWCLKEN ;
 int LM8323_CMD_SET_DEBOUNCE ;
 int LM8323_CMD_SET_KEY_SIZE ;
 int LM8323_CMD_WRITE_CFG ;
 int LM8323_CMD_WRITE_CLOCK ;
 int LM8323_CMD_WRITE_PORT_SEL ;
 int LM8323_CMD_WRITE_PORT_STATE ;
 int lm8323_set_active_time (struct lm8323_chip*,int) ;
 int lm8323_write (struct lm8323_chip*,int,int ,int,...) ;

__attribute__((used)) static int lm8323_configure(struct lm8323_chip *lm)
{
 int keysize = (lm->size_x << 4) | lm->size_y;
 int clock = (CLK_SLOWCLKEN | CLK_RCPWM_EXTERNAL);
 int debounce = lm->debounce_time >> 2;
 int active = lm->active_time >> 2;





 if (debounce >= active)
  active = debounce + 3;

 lm8323_write(lm, 2, LM8323_CMD_WRITE_CFG, 0);
 lm8323_write(lm, 2, LM8323_CMD_WRITE_CLOCK, clock);
 lm8323_write(lm, 2, LM8323_CMD_SET_KEY_SIZE, keysize);
 lm8323_set_active_time(lm, lm->active_time);
 lm8323_write(lm, 2, LM8323_CMD_SET_DEBOUNCE, debounce);
 lm8323_write(lm, 3, LM8323_CMD_WRITE_PORT_STATE, 0xff, 0xff);
 lm8323_write(lm, 3, LM8323_CMD_WRITE_PORT_SEL, 0, 0);






 return 0;
}
