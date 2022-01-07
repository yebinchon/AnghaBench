
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mirror_set {int in_sync; scalar_t__ nr_regions; TYPE_1__* ti; int rh; } ;
struct dm_region {int dummy; } ;
struct dm_dirty_log {TYPE_2__* type; } ;
struct TYPE_4__ {scalar_t__ (* get_sync_count ) (struct dm_dirty_log*) ;} ;
struct TYPE_3__ {int table; } ;


 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 int dm_rh_recovery_prepare (int ) ;
 struct dm_region* dm_rh_recovery_start (int ) ;
 int dm_table_event (int ) ;
 int recover (struct mirror_set*,struct dm_region*) ;
 int reset_ms_flags (struct mirror_set*) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;

__attribute__((used)) static void do_recovery(struct mirror_set *ms)
{
 struct dm_region *reg;
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);




 dm_rh_recovery_prepare(ms->rh);




 while ((reg = dm_rh_recovery_start(ms->rh)))
  recover(ms, reg);




 if (!ms->in_sync &&
     (log->type->get_sync_count(log) == ms->nr_regions)) {

  dm_table_event(ms->ti->table);
  ms->in_sync = 1;
  reset_ms_flags(ms);
 }
}
