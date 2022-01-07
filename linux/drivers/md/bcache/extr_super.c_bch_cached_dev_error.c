
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* disk; int flags; } ;
struct cached_dev {int io_disable; TYPE_2__ disk; int backing_dev_name; } ;
struct TYPE_3__ {int disk_name; } ;


 int BCACHE_DEV_CLOSING ;
 int bcache_device_stop (TYPE_2__*) ;
 int pr_err (char*,int ,int ) ;
 int smp_mb () ;
 scalar_t__ test_bit (int ,int *) ;

bool bch_cached_dev_error(struct cached_dev *dc)
{
 if (!dc || test_bit(BCACHE_DEV_CLOSING, &dc->disk.flags))
  return 0;

 dc->io_disable = 1;

 smp_mb();

 pr_err("stop %s: too many IO errors on backing device %s\n",
  dc->disk.disk->disk_name, dc->backing_dev_name);

 bcache_device_stop(&dc->disk);
 return 1;
}
