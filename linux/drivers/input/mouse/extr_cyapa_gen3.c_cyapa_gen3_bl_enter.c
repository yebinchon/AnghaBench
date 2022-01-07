
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {scalar_t__ state; int operational; int* status; } ;


 int BL_STATUS_WATCHDOG ;
 int CYAPA_CMD_SOFT_RESET ;
 scalar_t__ CYAPA_STATE_BL_IDLE ;
 scalar_t__ CYAPA_STATE_NO_DEVICE ;
 scalar_t__ CYAPA_STATE_OP ;
 int EAGAIN ;
 int EIO ;
 int ETIMEDOUT ;
 size_t REG_BL_STATUS ;
 int cyapa_poll_state (struct cyapa*,int) ;
 int cyapa_write_byte (struct cyapa*,int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cyapa_gen3_bl_enter(struct cyapa *cyapa)
{
 int error;
 int waiting_time;

 error = cyapa_poll_state(cyapa, 500);
 if (error)
  return error;
 if (cyapa->state == CYAPA_STATE_BL_IDLE) {

  return 0;
 }

 if (cyapa->state != CYAPA_STATE_OP)
  return -EAGAIN;

 cyapa->operational = 0;
 cyapa->state = CYAPA_STATE_NO_DEVICE;
 error = cyapa_write_byte(cyapa, CYAPA_CMD_SOFT_RESET, 0x01);
 if (error)
  return -EIO;

 usleep_range(25000, 50000);
 waiting_time = 2000;
 do {
  error = cyapa_poll_state(cyapa, 500);
  if (error) {
   if (error == -ETIMEDOUT) {
    waiting_time -= 500;
    continue;
   }
   return error;
  }

  if ((cyapa->state == CYAPA_STATE_BL_IDLE) &&
   !(cyapa->status[REG_BL_STATUS] & BL_STATUS_WATCHDOG))
   break;

  msleep(100);
  waiting_time -= 100;
 } while (waiting_time > 0);

 if ((cyapa->state != CYAPA_STATE_BL_IDLE) ||
  (cyapa->status[REG_BL_STATUS] & BL_STATUS_WATCHDOG))
  return -EAGAIN;

 return 0;
}
