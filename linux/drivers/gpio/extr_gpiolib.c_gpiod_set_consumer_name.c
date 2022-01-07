
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int label; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VALIDATE_DESC (struct gpio_desc*) ;
 int desc_set_label (struct gpio_desc*,char const*) ;
 int kfree_const (int ) ;
 char* kstrdup_const (char const*,int ) ;

int gpiod_set_consumer_name(struct gpio_desc *desc, const char *name)
{
 VALIDATE_DESC(desc);
 if (name) {
  name = kstrdup_const(name, GFP_KERNEL);
  if (!name)
   return -ENOMEM;
 }

 kfree_const(desc->label);
 desc_set_label(desc, name);

 return 0;
}
