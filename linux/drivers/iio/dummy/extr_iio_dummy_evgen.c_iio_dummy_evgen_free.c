
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irq_sim; } ;


 TYPE_1__* iio_evgen ;
 int irq_sim_fini (int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void iio_dummy_evgen_free(void)
{
 irq_sim_fini(&iio_evgen->irq_sim);
 kfree(iio_evgen);
}
