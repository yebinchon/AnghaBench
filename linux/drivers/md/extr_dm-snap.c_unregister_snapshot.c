
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct origin {int hash_list; int snapshots; } ;
struct dm_snapshot {int list; TYPE_1__* origin; } ;
struct TYPE_2__ {int bdev; } ;


 struct origin* __lookup_origin (int ) ;
 int _origins_lock ;
 int down_write (int *) ;
 int kfree (struct origin*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void unregister_snapshot(struct dm_snapshot *s)
{
 struct origin *o;

 down_write(&_origins_lock);
 o = __lookup_origin(s->origin->bdev);

 list_del(&s->list);
 if (o && list_empty(&o->snapshots)) {
  list_del(&o->hash_list);
  kfree(o);
 }

 up_write(&_origins_lock);
}
