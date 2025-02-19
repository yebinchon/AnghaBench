
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nodes; scalar_t__ max_write_behind; scalar_t__ daemon_sleep; scalar_t__ chunksize; scalar_t__ default_space; scalar_t__ default_offset; scalar_t__ offset; } ;
struct mddev {TYPE_1__ bitmap_info; int * cluster_info; int * private; scalar_t__ safemode; scalar_t__ degraded; scalar_t__ changed; scalar_t__ in_sync; scalar_t__ recovery; scalar_t__ sync_speed_max; scalar_t__ sync_speed_min; scalar_t__ suspend_hi; scalar_t__ suspend_lo; int resync_mismatches; scalar_t__ curr_resync; scalar_t__ new_chunk_sectors; scalar_t__ new_layout; void* new_level; scalar_t__ reshape_backwards; scalar_t__ delta_disks; scalar_t__ can_decrease_events; scalar_t__ events; scalar_t__ max_disks; scalar_t__ layout; scalar_t__ utime; scalar_t__ ctime; scalar_t__ chunk_sectors; scalar_t__* metadata_type; scalar_t__ ro; scalar_t__ sb_flags; scalar_t__ flags; scalar_t__* clevel; void* level; scalar_t__ persistent; scalar_t__ external; void* reshape_position; void* resync_max; scalar_t__ resync_min; scalar_t__ recovery_cp; scalar_t__ raid_disks; scalar_t__ dev_sectors; scalar_t__ external_size; scalar_t__ array_sectors; } ;


 void* LEVEL_NONE ;
 void* MaxSector ;
 int atomic64_set (int *,int ) ;

__attribute__((used)) static void md_clean(struct mddev *mddev)
{
 mddev->array_sectors = 0;
 mddev->external_size = 0;
 mddev->dev_sectors = 0;
 mddev->raid_disks = 0;
 mddev->recovery_cp = 0;
 mddev->resync_min = 0;
 mddev->resync_max = MaxSector;
 mddev->reshape_position = MaxSector;
 mddev->external = 0;
 mddev->persistent = 0;
 mddev->level = LEVEL_NONE;
 mddev->clevel[0] = 0;
 mddev->flags = 0;
 mddev->sb_flags = 0;
 mddev->ro = 0;
 mddev->metadata_type[0] = 0;
 mddev->chunk_sectors = 0;
 mddev->ctime = mddev->utime = 0;
 mddev->layout = 0;
 mddev->max_disks = 0;
 mddev->events = 0;
 mddev->can_decrease_events = 0;
 mddev->delta_disks = 0;
 mddev->reshape_backwards = 0;
 mddev->new_level = LEVEL_NONE;
 mddev->new_layout = 0;
 mddev->new_chunk_sectors = 0;
 mddev->curr_resync = 0;
 atomic64_set(&mddev->resync_mismatches, 0);
 mddev->suspend_lo = mddev->suspend_hi = 0;
 mddev->sync_speed_min = mddev->sync_speed_max = 0;
 mddev->recovery = 0;
 mddev->in_sync = 0;
 mddev->changed = 0;
 mddev->degraded = 0;
 mddev->safemode = 0;
 mddev->private = ((void*)0);
 mddev->cluster_info = ((void*)0);
 mddev->bitmap_info.offset = 0;
 mddev->bitmap_info.default_offset = 0;
 mddev->bitmap_info.default_space = 0;
 mddev->bitmap_info.chunksize = 0;
 mddev->bitmap_info.daemon_sleep = 0;
 mddev->bitmap_info.max_write_behind = 0;
 mddev->bitmap_info.nodes = 0;
}
