
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uuid_entry {int sectors; } ;
struct cache_set {int uuids; } ;
struct bcache_device {int kobj; int disk; int cl; } ;
struct TYPE_2__ {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int add_disk (int ) ;
 int bcache_device_attach (struct bcache_device*,struct cache_set*,struct uuid_entry*) ;
 scalar_t__ bcache_device_init (struct bcache_device*,int ,int ) ;
 int bcache_device_link (struct bcache_device*,struct cache_set*,char*) ;
 int bch_flash_dev_ktype ;
 int bch_flash_dev_request_init (struct bcache_device*) ;
 int bch_sectors_dirty_init (struct bcache_device*) ;
 int block_bytes (struct cache_set*) ;
 int closure_init (int *,int *) ;
 TYPE_1__* disk_to_dev (int ) ;
 int flash_dev_flush ;
 scalar_t__ kobject_add (int *,int *,char*) ;
 int kobject_init (int *,int *) ;
 int kobject_put (int *) ;
 struct bcache_device* kzalloc (int,int ) ;
 int set_closure_fn (int *,int ,int ) ;
 int system_wq ;

__attribute__((used)) static int flash_dev_run(struct cache_set *c, struct uuid_entry *u)
{
 struct bcache_device *d = kzalloc(sizeof(struct bcache_device),
       GFP_KERNEL);
 if (!d)
  return -ENOMEM;

 closure_init(&d->cl, ((void*)0));
 set_closure_fn(&d->cl, flash_dev_flush, system_wq);

 kobject_init(&d->kobj, &bch_flash_dev_ktype);

 if (bcache_device_init(d, block_bytes(c), u->sectors))
  goto err;

 bcache_device_attach(d, c, u - c->uuids);
 bch_sectors_dirty_init(d);
 bch_flash_dev_request_init(d);
 add_disk(d->disk);

 if (kobject_add(&d->kobj, &disk_to_dev(d->disk)->kobj, "bcache"))
  goto err;

 bcache_device_link(d, c, "volume");

 return 0;
err:
 kobject_put(&d->kobj);
 return -ENOMEM;
}
