
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp {int irq; int state; int bl_ready; } ;


 int CY_BL_STATE ;
 int CY_DELAY_DFLT ;
 int CY_DELAY_MAX ;
 int CY_IDLE_STATE ;
 int CY_SOFT_RESET_MODE ;
 int EIO ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int ttsp_send_command (struct cyttsp*,int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int cyttsp_soft_reset(struct cyttsp *ts)
{
 unsigned long timeout;
 int retval;


 reinit_completion(&ts->bl_ready);
 ts->state = CY_BL_STATE;

 enable_irq(ts->irq);

 retval = ttsp_send_command(ts, CY_SOFT_RESET_MODE);
 if (retval)
  goto out;

 timeout = wait_for_completion_timeout(&ts->bl_ready,
   msecs_to_jiffies(CY_DELAY_DFLT * CY_DELAY_MAX));
 retval = timeout ? 0 : -EIO;

out:
 ts->state = CY_IDLE_STATE;
 disable_irq(ts->irq);
 return retval;
}
