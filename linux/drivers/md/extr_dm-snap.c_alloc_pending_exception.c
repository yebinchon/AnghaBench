
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int pending_exceptions_count; int pending_pool; } ;
struct dm_snap_pending_exception {struct dm_snapshot* snap; } ;


 int GFP_NOIO ;
 int atomic_inc (int *) ;
 struct dm_snap_pending_exception* mempool_alloc (int *,int ) ;

__attribute__((used)) static struct dm_snap_pending_exception *alloc_pending_exception(struct dm_snapshot *s)
{
 struct dm_snap_pending_exception *pe = mempool_alloc(&s->pending_pool,
            GFP_NOIO);

 atomic_inc(&s->pending_exceptions_count);
 pe->snap = s;

 return pe;
}
