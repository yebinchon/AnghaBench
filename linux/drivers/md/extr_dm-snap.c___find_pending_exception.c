
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int dummy; } ;
struct dm_snap_pending_exception {int dummy; } ;
typedef int chunk_t ;


 struct dm_snap_pending_exception* __insert_pending_exception (struct dm_snapshot*,struct dm_snap_pending_exception*,int ) ;
 struct dm_snap_pending_exception* __lookup_pending_exception (struct dm_snapshot*,int ) ;
 int free_pending_exception (struct dm_snap_pending_exception*) ;

__attribute__((used)) static struct dm_snap_pending_exception *
__find_pending_exception(struct dm_snapshot *s,
    struct dm_snap_pending_exception *pe, chunk_t chunk)
{
 struct dm_snap_pending_exception *pe2;

 pe2 = __lookup_pending_exception(s, chunk);
 if (pe2) {
  free_pending_exception(pe);
  return pe2;
 }

 return __insert_pending_exception(s, pe, chunk);
}
