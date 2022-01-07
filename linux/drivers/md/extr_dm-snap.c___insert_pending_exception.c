
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dm_snapshot {int pending; int pe_allocation_lock; int exception_start_sequence; TYPE_2__* store; } ;
struct TYPE_7__ {int old_chunk; } ;
struct dm_snap_pending_exception {TYPE_3__ e; scalar_t__ exception_sequence; int * full_bio; scalar_t__ started; int snapshot_bios; int origin_bios; } ;
typedef int chunk_t ;
struct TYPE_6__ {TYPE_1__* type; } ;
struct TYPE_5__ {scalar_t__ (* prepare_exception ) (TYPE_2__*,TYPE_3__*) ;} ;


 int bio_list_init (int *) ;
 int dm_insert_exception (int *,TYPE_3__*) ;
 int free_pending_exception (struct dm_snap_pending_exception*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static struct dm_snap_pending_exception *
__insert_pending_exception(struct dm_snapshot *s,
      struct dm_snap_pending_exception *pe, chunk_t chunk)
{
 pe->e.old_chunk = chunk;
 bio_list_init(&pe->origin_bios);
 bio_list_init(&pe->snapshot_bios);
 pe->started = 0;
 pe->full_bio = ((void*)0);

 spin_lock(&s->pe_allocation_lock);
 if (s->store->type->prepare_exception(s->store, &pe->e)) {
  spin_unlock(&s->pe_allocation_lock);
  free_pending_exception(pe);
  return ((void*)0);
 }

 pe->exception_sequence = s->exception_start_sequence++;
 spin_unlock(&s->pe_allocation_lock);

 dm_insert_exception(&s->pending, &pe->e);

 return pe;
}
