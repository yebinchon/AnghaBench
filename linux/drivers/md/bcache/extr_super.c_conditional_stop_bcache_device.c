
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cached_dev {scalar_t__ stop_when_cache_set_failed; int io_disable; int has_dirty; } ;
struct TYPE_4__ {int set_uuid; } ;
struct cache_set {TYPE_2__ sb; } ;
struct bcache_device {TYPE_1__* disk; } ;
struct TYPE_3__ {int disk_name; } ;


 scalar_t__ BCH_CACHED_DEV_STOP_ALWAYS ;
 scalar_t__ atomic_read (int *) ;
 int bcache_device_stop (struct bcache_device*) ;
 int pr_warn (char*,int ,...) ;
 int smp_mb () ;

__attribute__((used)) static void conditional_stop_bcache_device(struct cache_set *c,
        struct bcache_device *d,
        struct cached_dev *dc)
{
 if (dc->stop_when_cache_set_failed == BCH_CACHED_DEV_STOP_ALWAYS) {
  pr_warn("stop_when_cache_set_failed of %s is \"always\", stop it for failed cache set %pU.",
   d->disk->disk_name, c->sb.set_uuid);
  bcache_device_stop(d);
 } else if (atomic_read(&dc->has_dirty)) {




  pr_warn("stop_when_cache_set_failed of %s is \"auto\" and cache is dirty, stop it to avoid potential data corruption.",
   d->disk->disk_name);
  dc->io_disable = 1;

  smp_mb();
  bcache_device_stop(d);
 } else {




  pr_warn("stop_when_cache_set_failed of %s is \"auto\" and cache is clean, keep it alive.",
   d->disk->disk_name);
 }
}
