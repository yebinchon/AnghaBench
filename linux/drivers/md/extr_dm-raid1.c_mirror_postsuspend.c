
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int rh; } ;
struct dm_target {struct mirror_set* private; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ (* postsuspend ) (struct dm_dirty_log*) ;} ;


 int DMWARN (char*) ;
 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;

__attribute__((used)) static void mirror_postsuspend(struct dm_target *ti)
{
 struct mirror_set *ms = ti->private;
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);

 if (log->type->postsuspend && log->type->postsuspend(log))

  DMWARN("log postsuspend failed");
}
