
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dummy_regs {int dummy; } ;
struct TYPE_2__ {int base; struct iio_dummy_regs* regs; } ;


 TYPE_1__* iio_evgen ;

struct iio_dummy_regs *iio_dummy_evgen_get_regs(int irq)
{
 return &iio_evgen->regs[irq - iio_evgen->base];
}
