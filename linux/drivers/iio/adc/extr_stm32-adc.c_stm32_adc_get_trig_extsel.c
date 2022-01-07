
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_adc {TYPE_1__* cfg; } ;
struct iio_trigger {int name; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int extsel; scalar_t__ name; } ;
struct TYPE_3__ {TYPE_2__* trigs; } ;


 int EINVAL ;
 struct stm32_adc* iio_priv (struct iio_dev*) ;
 scalar_t__ is_stm32_lptim_trigger (struct iio_trigger*) ;
 scalar_t__ is_stm32_timer_trigger (struct iio_trigger*) ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static int stm32_adc_get_trig_extsel(struct iio_dev *indio_dev,
         struct iio_trigger *trig)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 int i;


 for (i = 0; adc->cfg->trigs[i].name; i++) {




  if ((is_stm32_timer_trigger(trig) ||
       is_stm32_lptim_trigger(trig)) &&
      !strcmp(adc->cfg->trigs[i].name, trig->name)) {
   return adc->cfg->trigs[i].extsel;
  }
 }

 return -EINVAL;
}
