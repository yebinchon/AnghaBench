
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_table {int * table; } ;
struct dm_snapshot {struct dm_exception_table pending; struct dm_exception_table complete; } ;
struct dm_exception_table_lock {int * pending_slot; int * complete_slot; } ;
typedef int chunk_t ;


 size_t exception_hash (struct dm_exception_table*,int ) ;

__attribute__((used)) static void dm_exception_table_lock_init(struct dm_snapshot *s, chunk_t chunk,
      struct dm_exception_table_lock *lock)
{
 struct dm_exception_table *complete = &s->complete;
 struct dm_exception_table *pending = &s->pending;

 lock->complete_slot = &complete->table[exception_hash(complete, chunk)];
 lock->pending_slot = &pending->table[exception_hash(pending, chunk)];
}
