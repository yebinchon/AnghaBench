
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct at91_adc_state {int trig; TYPE_1__* selected_trig; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int at91_adc_allocate_trigger (struct iio_dev*,int ) ;
 int dev_err (int *,char*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int at91_adc_trigger_init(struct iio_dev *indio)
{
 struct at91_adc_state *st = iio_priv(indio);

 st->trig = at91_adc_allocate_trigger(indio, st->selected_trig->name);
 if (IS_ERR(st->trig)) {
  dev_err(&indio->dev,
   "could not allocate trigger\n");
  return PTR_ERR(st->trig);
 }

 return 0;
}
