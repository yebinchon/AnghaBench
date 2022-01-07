
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lm8323_pwm {int running; int id; int chip; } ;


 int LM8323_CMD_START_PWM ;
 int const PWM_END (int) ;
 int lm8323_write (int ,int,int ,int ) ;
 int lm8323_write_pwm_one (struct lm8323_pwm*,int,int const) ;

__attribute__((used)) static void lm8323_write_pwm(struct lm8323_pwm *pwm, int kill,
        int len, const u16 *cmds)
{
 int i;

 for (i = 0; i < len; i++)
  lm8323_write_pwm_one(pwm, i, cmds[i]);

 lm8323_write_pwm_one(pwm, i++, PWM_END(kill));
 lm8323_write(pwm->chip, 2, LM8323_CMD_START_PWM, pwm->id);
 pwm->running = 1;
}
