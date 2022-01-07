
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_pin {scalar_t__ state; int timer; int adap; TYPE_1__* ops; int work_irq_change; } ;
struct TYPE_2__ {int (* disable_irq ) (int ) ;} ;


 int CEC_PIN_IRQ_UNCHANGED ;
 scalar_t__ CEC_ST_RX_IRQ ;
 int HRTIMER_MODE_REL ;
 int atomic_set (int *,int ) ;
 int cec_pin_high (struct cec_pin*) ;
 int cec_pin_to_idle (struct cec_pin*) ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int ) ;
 int stub1 (int ) ;

void cec_pin_start_timer(struct cec_pin *pin)
{
 if (pin->state != CEC_ST_RX_IRQ)
  return;

 atomic_set(&pin->work_irq_change, CEC_PIN_IRQ_UNCHANGED);
 pin->ops->disable_irq(pin->adap);
 cec_pin_high(pin);
 cec_pin_to_idle(pin);
 hrtimer_start(&pin->timer, ns_to_ktime(0), HRTIMER_MODE_REL);
}
