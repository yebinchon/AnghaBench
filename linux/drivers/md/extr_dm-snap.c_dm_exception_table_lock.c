
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_table_lock {int pending_slot; int complete_slot; } ;


 int hlist_bl_lock (int ) ;

__attribute__((used)) static void dm_exception_table_lock(struct dm_exception_table_lock *lock)
{
 hlist_bl_lock(lock->complete_slot);
 hlist_bl_lock(lock->pending_slot);
}
