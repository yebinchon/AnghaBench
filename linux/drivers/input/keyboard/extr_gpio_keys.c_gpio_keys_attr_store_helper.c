
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_keys_drvdata {int disable_lock; struct gpio_button_data* data; TYPE_1__* pdata; int input; } ;
struct gpio_button_data {int * code; TYPE_2__* button; } ;
typedef int ssize_t ;
struct TYPE_4__ {unsigned int type; int can_disable; } ;
struct TYPE_3__ {int nbuttons; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_free (unsigned long*) ;
 int bitmap_parselist (char const*,unsigned long*,int) ;
 int bitmap_subset (unsigned long*,unsigned long const*,int) ;
 unsigned long* bitmap_zalloc (int,int ) ;
 unsigned long* get_bm_events_by_type (int ,unsigned int) ;
 int get_n_events_by_type (unsigned int) ;
 int gpio_keys_disable_button (struct gpio_button_data*) ;
 int gpio_keys_enable_button (struct gpio_button_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static ssize_t gpio_keys_attr_store_helper(struct gpio_keys_drvdata *ddata,
        const char *buf, unsigned int type)
{
 int n_events = get_n_events_by_type(type);
 const unsigned long *bitmap = get_bm_events_by_type(ddata->input, type);
 unsigned long *bits;
 ssize_t error;
 int i;

 bits = bitmap_zalloc(n_events, GFP_KERNEL);
 if (!bits)
  return -ENOMEM;

 error = bitmap_parselist(buf, bits, n_events);
 if (error)
  goto out;


 if (!bitmap_subset(bits, bitmap, n_events)) {
  error = -EINVAL;
  goto out;
 }

 for (i = 0; i < ddata->pdata->nbuttons; i++) {
  struct gpio_button_data *bdata = &ddata->data[i];

  if (bdata->button->type != type)
   continue;

  if (test_bit(*bdata->code, bits) &&
      !bdata->button->can_disable) {
   error = -EINVAL;
   goto out;
  }
 }

 mutex_lock(&ddata->disable_lock);

 for (i = 0; i < ddata->pdata->nbuttons; i++) {
  struct gpio_button_data *bdata = &ddata->data[i];

  if (bdata->button->type != type)
   continue;

  if (test_bit(*bdata->code, bits))
   gpio_keys_disable_button(bdata);
  else
   gpio_keys_enable_button(bdata);
 }

 mutex_unlock(&ddata->disable_lock);

out:
 bitmap_free(bits);
 return error;
}
