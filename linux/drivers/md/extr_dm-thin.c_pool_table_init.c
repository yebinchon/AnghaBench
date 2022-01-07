
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pools; int mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_1__ dm_thin_pool_table ;
 int mutex_init (int *) ;

__attribute__((used)) static void pool_table_init(void)
{
 mutex_init(&dm_thin_pool_table.mutex);
 INIT_LIST_HEAD(&dm_thin_pool_table.pools);
}
