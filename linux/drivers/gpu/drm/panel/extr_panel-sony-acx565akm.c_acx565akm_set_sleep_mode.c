
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acx565akm_panel {void* hw_guard_end; unsigned long hw_guard_wait; } ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int TASK_UNINTERRUPTIBLE ;
 int acx565akm_cmd (struct acx565akm_panel*,int) ;
 void* jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;

__attribute__((used)) static void acx565akm_set_sleep_mode(struct acx565akm_panel *lcd, int on)
{
 int cmd = on ? MIPI_DCS_ENTER_SLEEP_MODE : MIPI_DCS_EXIT_SLEEP_MODE;
 unsigned long wait;





 wait = lcd->hw_guard_end - jiffies;
 if ((long)wait > 0 && wait <= lcd->hw_guard_wait) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(wait);
 }

 acx565akm_cmd(lcd, cmd);

 lcd->hw_guard_wait = msecs_to_jiffies(120);
 lcd->hw_guard_end = jiffies + lcd->hw_guard_wait;
}
