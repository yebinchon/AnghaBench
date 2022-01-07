
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_lookup_table {int list; } ;


 int gpio_lookup_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gpiod_remove_lookup_table(struct gpiod_lookup_table *table)
{
 mutex_lock(&gpio_lookup_lock);

 list_del(&table->list);

 mutex_unlock(&gpio_lookup_lock);
}
