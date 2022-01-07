
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_sw_trigger_type {int owner; TYPE_1__* ops; } ;
struct iio_sw_trigger {struct iio_sw_trigger_type* trigger_type; } ;
struct TYPE_2__ {int (* remove ) (struct iio_sw_trigger*) ;} ;


 int module_put (int ) ;
 int stub1 (struct iio_sw_trigger*) ;

void iio_sw_trigger_destroy(struct iio_sw_trigger *t)
{
 struct iio_sw_trigger_type *tt = t->trigger_type;

 tt->ops->remove(t);
 module_put(tt->owner);
}
