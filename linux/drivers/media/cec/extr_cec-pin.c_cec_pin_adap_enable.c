
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
struct cec_pin {int enabled; int work_pin_events_dropped; int state; int kthread; int timer; TYPE_2__* ops; int work_irq_change; int timer_ts; TYPE_1__ tx_msg; scalar_t__ work_pin_events_wr; scalar_t__ work_pin_events_rd; int work_pin_num_events; } ;
struct cec_adapter {struct cec_pin* pin; } ;
struct TYPE_4__ {int (* disable_irq ) (struct cec_adapter*) ;} ;


 int CEC_PIN_IRQ_UNCHANGED ;
 int CEC_ST_OFF ;
 int HRTIMER_MODE_REL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atomic_set (int *,int ) ;
 int cec_pin_read (struct cec_pin*) ;
 int cec_pin_thread_func ;
 int cec_pin_to_idle (struct cec_pin*) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int kthread_run (int ,struct cec_adapter*,char*) ;
 int kthread_stop (int ) ;
 int ns_to_ktime (int ) ;
 int pr_err (char*) ;
 int stub1 (struct cec_adapter*) ;

__attribute__((used)) static int cec_pin_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct cec_pin *pin = adap->pin;

 pin->enabled = enable;
 if (enable) {
  atomic_set(&pin->work_pin_num_events, 0);
  pin->work_pin_events_rd = pin->work_pin_events_wr = 0;
  pin->work_pin_events_dropped = 0;
  cec_pin_read(pin);
  cec_pin_to_idle(pin);
  pin->tx_msg.len = 0;
  pin->timer_ts = ns_to_ktime(0);
  atomic_set(&pin->work_irq_change, CEC_PIN_IRQ_UNCHANGED);
  pin->kthread = kthread_run(cec_pin_thread_func, adap,
        "cec-pin");
  if (IS_ERR(pin->kthread)) {
   pr_err("cec-pin: kernel_thread() failed\n");
   return PTR_ERR(pin->kthread);
  }
  hrtimer_start(&pin->timer, ns_to_ktime(0),
         HRTIMER_MODE_REL);
 } else {
  if (pin->ops->disable_irq)
   pin->ops->disable_irq(adap);
  hrtimer_cancel(&pin->timer);
  kthread_stop(pin->kthread);
  cec_pin_read(pin);
  cec_pin_to_idle(pin);
  pin->state = CEC_ST_OFF;
 }
 return 0;
}
