
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_pin {int work_irq_change; } ;
struct cec_adapter {scalar_t__ monitor_all_cnt; scalar_t__ is_configured; scalar_t__ is_configuring; struct cec_pin* pin; } ;


 int CEC_PIN_IRQ_DISABLE ;
 int atomic_set (int *,int ) ;
 int cec_pin_update (struct cec_pin*,int,int) ;

void cec_pin_changed(struct cec_adapter *adap, bool value)
{
 struct cec_pin *pin = adap->pin;

 cec_pin_update(pin, value, 0);
 if (!value && (adap->is_configuring || adap->is_configured ||
         adap->monitor_all_cnt))
  atomic_set(&pin->work_irq_change, CEC_PIN_IRQ_DISABLE);
}
