
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_trigger {int name; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int jextsel; scalar_t__ name; } ;


 int EINVAL ;
 scalar_t__ is_stm32_lptim_trigger (struct iio_trigger*) ;
 scalar_t__ is_stm32_timer_trigger (struct iio_trigger*) ;
 TYPE_1__* stm32_dfsdm_trigs ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static int stm32_dfsdm_get_jextsel(struct iio_dev *indio_dev,
       struct iio_trigger *trig)
{
 int i;


 for (i = 0; stm32_dfsdm_trigs[i].name; i++) {




  if ((is_stm32_timer_trigger(trig) ||
       is_stm32_lptim_trigger(trig)) &&
      !strcmp(stm32_dfsdm_trigs[i].name, trig->name)) {
   return stm32_dfsdm_trigs[i].jextsel;
  }
 }

 return -EINVAL;
}
