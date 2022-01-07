
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct at91_adc_state {int trigger_number; int ** trig; TYPE_1__* trigger_list; int use_external; } ;
struct TYPE_2__ {scalar_t__ is_external; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * at91_adc_allocate_trigger (struct iio_dev*,TYPE_1__*) ;
 int dev_err (int *,char*,int) ;
 int ** devm_kcalloc (int *,int,int,int ) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_free (int *) ;
 int iio_trigger_unregister (int *) ;

__attribute__((used)) static int at91_adc_trigger_init(struct iio_dev *idev)
{
 struct at91_adc_state *st = iio_priv(idev);
 int i, ret;

 st->trig = devm_kcalloc(&idev->dev,
    st->trigger_number, sizeof(*st->trig),
    GFP_KERNEL);

 if (st->trig == ((void*)0)) {
  ret = -ENOMEM;
  goto error_ret;
 }

 for (i = 0; i < st->trigger_number; i++) {
  if (st->trigger_list[i].is_external && !(st->use_external))
   continue;

  st->trig[i] = at91_adc_allocate_trigger(idev,
       st->trigger_list + i);
  if (st->trig[i] == ((void*)0)) {
   dev_err(&idev->dev,
    "Could not allocate trigger %d\n", i);
   ret = -ENOMEM;
   goto error_trigger;
  }
 }

 return 0;

error_trigger:
 for (i--; i >= 0; i--) {
  iio_trigger_unregister(st->trig[i]);
  iio_trigger_free(st->trig[i]);
 }
error_ret:
 return ret;
}
