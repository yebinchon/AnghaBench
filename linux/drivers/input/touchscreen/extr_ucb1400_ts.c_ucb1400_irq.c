
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int irq; int stopped; int ts_idev; int ts_wait; int ac97; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UCB1400_TS_POLL_PERIOD ;
 int msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 int ucb1400_adc_disable (int ) ;
 int ucb1400_adc_enable (int ) ;
 int ucb1400_clear_pending_irq (struct ucb1400_ts*) ;
 int ucb1400_ts_event_release (int ) ;
 int ucb1400_ts_irq_enable (struct ucb1400_ts*) ;
 int ucb1400_ts_mode_int (struct ucb1400_ts*) ;
 int ucb1400_ts_pen_up (struct ucb1400_ts*) ;
 unsigned int ucb1400_ts_read_pressure (struct ucb1400_ts*) ;
 unsigned int ucb1400_ts_read_xpos (struct ucb1400_ts*) ;
 unsigned int ucb1400_ts_read_ypos (struct ucb1400_ts*) ;
 int ucb1400_ts_report_event (int ,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t ucb1400_irq(int irqnr, void *devid)
{
 struct ucb1400_ts *ucb = devid;
 unsigned int x, y, p;
 bool penup;

 if (unlikely(irqnr != ucb->irq))
  return IRQ_NONE;

 ucb1400_clear_pending_irq(ucb);


 msleep(UCB1400_TS_POLL_PERIOD);

 while (!ucb->stopped && !(penup = ucb1400_ts_pen_up(ucb))) {

  ucb1400_adc_enable(ucb->ac97);
  x = ucb1400_ts_read_xpos(ucb);
  y = ucb1400_ts_read_ypos(ucb);
  p = ucb1400_ts_read_pressure(ucb);
  ucb1400_adc_disable(ucb->ac97);

  ucb1400_ts_report_event(ucb->ts_idev, p, x, y);

  wait_event_timeout(ucb->ts_wait, ucb->stopped,
       msecs_to_jiffies(UCB1400_TS_POLL_PERIOD));
 }

 ucb1400_ts_event_release(ucb->ts_idev);

 if (!ucb->stopped) {

  ucb1400_ts_mode_int(ucb);
  ucb1400_ts_irq_enable(ucb);
 }

 return IRQ_HANDLED;
}
