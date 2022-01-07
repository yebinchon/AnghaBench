
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_table_lock {int complete_slot; int pending_slot; } ;


 int hlist_bl_unlock (int ) ;

__attribute__((used)) static void dm_exception_table_unlock(struct dm_exception_table_lock *lock)
{
 hlist_bl_unlock(lock->pending_slot);
 hlist_bl_unlock(lock->complete_slot);
}
