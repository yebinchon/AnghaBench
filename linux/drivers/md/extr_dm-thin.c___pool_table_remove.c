
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int list; } ;
struct TYPE_2__ {int mutex; } ;


 int BUG_ON (int) ;
 TYPE_1__ dm_thin_pool_table ;
 int list_del (int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __pool_table_remove(struct pool *pool)
{
 BUG_ON(!mutex_is_locked(&dm_thin_pool_table.mutex));
 list_del(&pool->list);
}
