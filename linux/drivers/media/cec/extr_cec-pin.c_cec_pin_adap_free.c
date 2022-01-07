
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_pin {TYPE_1__* ops; } ;
struct cec_adapter {struct cec_pin* pin; } ;
struct TYPE_2__ {int (* free ) (struct cec_adapter*) ;} ;


 int kfree (struct cec_pin*) ;
 int stub1 (struct cec_adapter*) ;

__attribute__((used)) static void cec_pin_adap_free(struct cec_adapter *adap)
{
 struct cec_pin *pin = adap->pin;

 if (pin->ops->free)
  pin->ops->free(adap);
 adap->pin = ((void*)0);
 kfree(pin);
}
