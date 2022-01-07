
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct input_dev {scalar_t__ users; } ;
struct cyapa {scalar_t__ state; scalar_t__ operational; struct input_dev* input; } ;
typedef enum cyapa_pm_stage { ____Placeholder_cyapa_pm_stage } cyapa_pm_stage ;


 int CYAPA_CMD_POWER_MODE ;
 int CYAPA_PM_RUNTIME_RESUME ;
 int CYAPA_PM_RUNTIME_SUSPEND ;
 scalar_t__ CYAPA_STATE_OP ;
 int PWR_MODE_MASK ;
 int SET_POWER_MODE_DELAY ;
 int SET_POWER_MODE_TRIES ;
 int cyapa_gen3_try_poll_handler (struct cyapa*) ;
 scalar_t__ cyapa_get_wait_time_for_pwr_cmd (int) ;
 int cyapa_read_byte (struct cyapa*,int ) ;
 int cyapa_write_byte (struct cyapa*,int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cyapa_gen3_set_power_mode(struct cyapa *cyapa, u8 power_mode,
  u16 always_unused, enum cyapa_pm_stage pm_stage)
{
 struct input_dev *input = cyapa->input;
 u8 power;
 int tries;
 int sleep_time;
 int interval;
 int ret;

 if (cyapa->state != CYAPA_STATE_OP)
  return 0;

 tries = SET_POWER_MODE_TRIES;
 while (tries--) {
  ret = cyapa_read_byte(cyapa, CYAPA_CMD_POWER_MODE);
  if (ret >= 0)
   break;
  usleep_range(SET_POWER_MODE_DELAY, 2 * SET_POWER_MODE_DELAY);
 }
 if (ret < 0)
  return ret;





 if ((ret & PWR_MODE_MASK) == power_mode)
  return 0;

 sleep_time = (int)cyapa_get_wait_time_for_pwr_cmd(ret & PWR_MODE_MASK);
 power = ret;
 power &= ~PWR_MODE_MASK;
 power |= power_mode & PWR_MODE_MASK;
 tries = SET_POWER_MODE_TRIES;
 while (tries--) {
  ret = cyapa_write_byte(cyapa, CYAPA_CMD_POWER_MODE, power);
  if (!ret)
   break;
  usleep_range(SET_POWER_MODE_DELAY, 2 * SET_POWER_MODE_DELAY);
 }







 if (cyapa->operational && input && input->users &&
     (pm_stage == CYAPA_PM_RUNTIME_SUSPEND ||
      pm_stage == CYAPA_PM_RUNTIME_RESUME)) {

  interval = 1000 / 120;
  while (sleep_time > 0) {
   if (sleep_time > interval)
    msleep(interval);
   else
    msleep(sleep_time);
   sleep_time -= interval;
   cyapa_gen3_try_poll_handler(cyapa);
  }
 } else {
  msleep(sleep_time);
 }

 return ret;
}
