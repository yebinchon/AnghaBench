
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_pin {int adap; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* high ) (int ) ;} ;


 int cec_pin_read (struct cec_pin*) ;
 int stub1 (int ) ;

__attribute__((used)) static bool cec_pin_high(struct cec_pin *pin)
{
 pin->ops->high(pin->adap);
 return cec_pin_read(pin);
}
