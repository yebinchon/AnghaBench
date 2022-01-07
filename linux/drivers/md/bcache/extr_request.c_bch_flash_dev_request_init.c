
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {TYPE_2__* queue; } ;
struct bcache_device {int ioctl; int cache_miss; struct gendisk* disk; } ;
struct TYPE_4__ {TYPE_1__* backing_dev_info; int make_request_fn; } ;
struct TYPE_3__ {int congested_fn; } ;


 int flash_dev_cache_miss ;
 int flash_dev_congested ;
 int flash_dev_ioctl ;
 int flash_dev_make_request ;

void bch_flash_dev_request_init(struct bcache_device *d)
{
 struct gendisk *g = d->disk;

 g->queue->make_request_fn = flash_dev_make_request;
 g->queue->backing_dev_info->congested_fn = flash_dev_congested;
 d->cache_miss = flash_dev_cache_miss;
 d->ioctl = flash_dev_ioctl;
}
