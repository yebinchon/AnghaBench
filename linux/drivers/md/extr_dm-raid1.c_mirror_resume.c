
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int rh; int suspend; } ;
struct dm_target {struct mirror_set* private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ (* resume ) (struct dm_dirty_log*) ;} ;


 int DMWARN (char*) ;
 int atomic_set (int *,int ) ;
 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 int dm_rh_start_recovery (int ) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;

__attribute__((used)) static void mirror_resume(struct dm_target *ti)
{
 struct mirror_set *ms = ti->private;
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);

 atomic_set(&ms->suspend, 0);
 if (log->type->resume && log->type->resume(log))

  DMWARN("log resume failed");
 dm_rh_start_recovery(ms->rh);
}
