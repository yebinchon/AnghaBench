
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_lookup_table {int list; } ;


 int gpio_lookup_list ;
 int gpio_lookup_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gpiod_add_lookup_tables(struct gpiod_lookup_table **tables, size_t n)
{
 unsigned int i;

 mutex_lock(&gpio_lookup_lock);

 for (i = 0; i < n; i++)
  list_add_tail(&tables[i]->list, &gpio_lookup_list);

 mutex_unlock(&gpio_lookup_lock);
}
