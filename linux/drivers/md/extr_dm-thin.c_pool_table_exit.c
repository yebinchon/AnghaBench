
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;


 TYPE_1__ dm_thin_pool_table ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void pool_table_exit(void)
{
 mutex_destroy(&dm_thin_pool_table.mutex);
}
