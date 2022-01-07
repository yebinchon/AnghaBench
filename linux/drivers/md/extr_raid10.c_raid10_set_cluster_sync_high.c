
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raid_disks; int near_copies; } ;
struct r10conf {scalar_t__ cluster_sync_low; scalar_t__ cluster_sync_high; TYPE_1__* mddev; TYPE_2__ geo; } ;
typedef int sector_t ;
struct TYPE_3__ {int chunk_sectors; } ;


 int CLUSTER_RESYNC_WINDOW_SECTORS ;

__attribute__((used)) static void raid10_set_cluster_sync_high(struct r10conf *conf)
{
 sector_t window_size;
 int extra_chunk, chunks;
 chunks = conf->geo.raid_disks / conf->geo.near_copies;
 if (conf->geo.raid_disks % conf->geo.near_copies == 0)
  extra_chunk = 0;
 else
  extra_chunk = 1;
 window_size = (chunks + extra_chunk) * conf->mddev->chunk_sectors;




 window_size = (CLUSTER_RESYNC_WINDOW_SECTORS > window_size) ?
   CLUSTER_RESYNC_WINDOW_SECTORS : window_size;

 conf->cluster_sync_high = conf->cluster_sync_low + window_size;
}
