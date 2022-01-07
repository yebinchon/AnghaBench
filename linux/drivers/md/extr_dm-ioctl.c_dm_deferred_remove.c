
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dm_hash_remove_all (int,int,int) ;

void dm_deferred_remove(void)
{
 dm_hash_remove_all(1, 0, 1);
}
