
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gem_object {int lock; } ;


 int lockdep_assert_held (int *) ;

void etnaviv_gem_put_pages(struct etnaviv_gem_object *etnaviv_obj)
{
 lockdep_assert_held(&etnaviv_obj->lock);

}
