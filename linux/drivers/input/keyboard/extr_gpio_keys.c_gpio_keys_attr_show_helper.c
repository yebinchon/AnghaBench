
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_keys_drvdata {struct gpio_button_data* data; TYPE_1__* pdata; } ;
struct gpio_button_data {int * code; int disabled; TYPE_2__* button; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {unsigned int type; } ;
struct TYPE_3__ {int nbuttons; } ;


 size_t ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int __set_bit (int ,unsigned long*) ;
 int bitmap_free (unsigned long*) ;
 unsigned long* bitmap_zalloc (int,int ) ;
 int get_n_events_by_type (unsigned int) ;
 size_t scnprintf (char*,scalar_t__,char*,int,unsigned long*) ;

__attribute__((used)) static ssize_t gpio_keys_attr_show_helper(struct gpio_keys_drvdata *ddata,
       char *buf, unsigned int type,
       bool only_disabled)
{
 int n_events = get_n_events_by_type(type);
 unsigned long *bits;
 ssize_t ret;
 int i;

 bits = bitmap_zalloc(n_events, GFP_KERNEL);
 if (!bits)
  return -ENOMEM;

 for (i = 0; i < ddata->pdata->nbuttons; i++) {
  struct gpio_button_data *bdata = &ddata->data[i];

  if (bdata->button->type != type)
   continue;

  if (only_disabled && !bdata->disabled)
   continue;

  __set_bit(*bdata->code, bits);
 }

 ret = scnprintf(buf, PAGE_SIZE - 1, "%*pbl", n_events, bits);
 buf[ret++] = '\n';
 buf[ret] = '\0';

 bitmap_free(bits);

 return ret;
}
