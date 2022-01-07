
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_pin {int adap; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int ) ;} ;


 int cec_pin_update (struct cec_pin*,int,int) ;
 int stub1 (int ) ;

__attribute__((used)) static bool cec_pin_read(struct cec_pin *pin)
{
 bool v = pin->ops->read(pin->adap);

 cec_pin_update(pin, v, 0);
 return v;
}
