
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uuid_entry {int invalidated; int uuid; } ;
struct bcache_device {int id; TYPE_1__* c; int flags; } ;
struct TYPE_2__ {int caching; int ** devices; struct uuid_entry* uuids; int attached_dev_nr; } ;


 int BCACHE_DEV_DETACHING ;
 int SET_UUID_FLASH_ONLY (struct uuid_entry*,int ) ;
 int atomic_dec (int *) ;
 int bcache_device_unlink (struct bcache_device*) ;
 int bch_register_lock ;
 int bch_uuid_write (TYPE_1__*) ;
 int closure_put (int *) ;
 int cpu_to_le32 (int ) ;
 int invalid_uuid ;
 scalar_t__ ktime_get_real_seconds () ;
 int lockdep_assert_held (int *) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bcache_device_detach(struct bcache_device *d)
{
 lockdep_assert_held(&bch_register_lock);

 atomic_dec(&d->c->attached_dev_nr);

 if (test_bit(BCACHE_DEV_DETACHING, &d->flags)) {
  struct uuid_entry *u = d->c->uuids + d->id;

  SET_UUID_FLASH_ONLY(u, 0);
  memcpy(u->uuid, invalid_uuid, 16);
  u->invalidated = cpu_to_le32((u32)ktime_get_real_seconds());
  bch_uuid_write(d->c);
 }

 bcache_device_unlink(d);

 d->c->devices[d->id] = ((void*)0);
 closure_put(&d->c->caching);
 d->c = ((void*)0);
}
