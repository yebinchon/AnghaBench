
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct origin {struct block_device* bdev; int snapshots; } ;
struct dm_snapshot {TYPE_1__* origin; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct block_device* bdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __insert_origin (struct origin*) ;
 int __insert_snapshot (struct origin*,struct dm_snapshot*) ;
 struct origin* __lookup_origin (struct block_device*) ;
 int __validate_exception_handover (struct dm_snapshot*) ;
 int _origins_lock ;
 int down_write (int *) ;
 int kfree (struct origin*) ;
 struct origin* kmalloc (int,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int register_snapshot(struct dm_snapshot *snap)
{
 struct origin *o, *new_o = ((void*)0);
 struct block_device *bdev = snap->origin->bdev;
 int r = 0;

 new_o = kmalloc(sizeof(*new_o), GFP_KERNEL);
 if (!new_o)
  return -ENOMEM;

 down_write(&_origins_lock);

 r = __validate_exception_handover(snap);
 if (r < 0) {
  kfree(new_o);
  goto out;
 }

 o = __lookup_origin(bdev);
 if (o)
  kfree(new_o);
 else {

  o = new_o;


  INIT_LIST_HEAD(&o->snapshots);
  o->bdev = bdev;

  __insert_origin(o);
 }

 __insert_snapshot(o, snap);

out:
 up_write(&_origins_lock);

 return r;
}
