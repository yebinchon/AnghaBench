
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int id; int name; } ;
struct at91_adc_trigger {scalar_t__ value; int name; } ;
struct at91_adc_state {int trigger_number; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 char* kasprintf (int ,char*,int ,int ,int ) ;
 int kfree (char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int at91_adc_get_trigger_value_by_name(struct iio_dev *idev,
          struct at91_adc_trigger *triggers,
          const char *trigger_name)
{
 struct at91_adc_state *st = iio_priv(idev);
 int i;

 for (i = 0; i < st->trigger_number; i++) {
  char *name = kasprintf(GFP_KERNEL,
    "%s-dev%d-%s",
    idev->name,
    idev->id,
    triggers[i].name);
  if (!name)
   return -ENOMEM;

  if (strcmp(trigger_name, name) == 0) {
   kfree(name);
   if (triggers[i].value == 0)
    return -EINVAL;
   return triggers[i].value;
  }

  kfree(name);
 }

 return -EINVAL;
}
