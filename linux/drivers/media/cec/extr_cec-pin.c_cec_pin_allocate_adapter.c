
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cec_pin_ops {int dummy; } ;
struct TYPE_2__ {int function; } ;
struct cec_pin {struct cec_adapter* adap; void* tx_custom_high_usecs; void* tx_custom_low_usecs; int kthread_waitq; TYPE_1__ timer; struct cec_pin_ops const* ops; } ;
struct cec_adapter {struct cec_pin* pin; } ;


 int CEC_CAP_MONITOR_ALL ;
 int CEC_CAP_MONITOR_PIN ;
 int CEC_MAX_LOG_ADDRS ;
 void* CEC_TIM_CUSTOM_DEFAULT ;
 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 struct cec_adapter* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 scalar_t__ IS_ERR (struct cec_adapter*) ;
 struct cec_adapter* cec_allocate_adapter (int *,void*,char const*,int,int ) ;
 int cec_pin_adap_ops ;
 int cec_pin_high (struct cec_pin*) ;
 int cec_pin_timer ;
 int cec_pin_update (struct cec_pin*,int ,int) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct cec_pin*) ;
 struct cec_pin* kzalloc (int,int ) ;

struct cec_adapter *cec_pin_allocate_adapter(const struct cec_pin_ops *pin_ops,
     void *priv, const char *name, u32 caps)
{
 struct cec_adapter *adap;
 struct cec_pin *pin = kzalloc(sizeof(*pin), GFP_KERNEL);

 if (pin == ((void*)0))
  return ERR_PTR(-ENOMEM);
 pin->ops = pin_ops;
 hrtimer_init(&pin->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 pin->timer.function = cec_pin_timer;
 init_waitqueue_head(&pin->kthread_waitq);
 pin->tx_custom_low_usecs = CEC_TIM_CUSTOM_DEFAULT;
 pin->tx_custom_high_usecs = CEC_TIM_CUSTOM_DEFAULT;

 adap = cec_allocate_adapter(&cec_pin_adap_ops, priv, name,
       caps | CEC_CAP_MONITOR_ALL | CEC_CAP_MONITOR_PIN,
       CEC_MAX_LOG_ADDRS);

 if (IS_ERR(adap)) {
  kfree(pin);
  return adap;
 }

 adap->pin = pin;
 pin->adap = adap;
 cec_pin_update(pin, cec_pin_high(pin), 1);
 return adap;
}
