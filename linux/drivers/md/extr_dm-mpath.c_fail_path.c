
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* dev; } ;
struct pgpath {int is_active; TYPE_5__ path; int fail_count; TYPE_2__* pg; } ;
struct multipath {int lock; int trigger_event; int nr_valid_paths; int ti; struct pgpath* current_pgpath; } ;
struct TYPE_9__ {TYPE_1__* type; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {TYPE_4__ ps; struct multipath* m; } ;
struct TYPE_6__ {int (* fail_path ) (TYPE_4__*,TYPE_5__*) ;} ;


 int DMWARN (char*,int ) ;
 int DM_UEVENT_PATH_FAILED ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int dm_path_uevent (int ,int ,int ,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int fail_path(struct pgpath *pgpath)
{
 unsigned long flags;
 struct multipath *m = pgpath->pg->m;

 spin_lock_irqsave(&m->lock, flags);

 if (!pgpath->is_active)
  goto out;

 DMWARN("Failing path %s.", pgpath->path.dev->name);

 pgpath->pg->ps.type->fail_path(&pgpath->pg->ps, &pgpath->path);
 pgpath->is_active = 0;
 pgpath->fail_count++;

 atomic_dec(&m->nr_valid_paths);

 if (pgpath == m->current_pgpath)
  m->current_pgpath = ((void*)0);

 dm_path_uevent(DM_UEVENT_PATH_FAILED, m->ti,
         pgpath->path.dev->name, atomic_read(&m->nr_valid_paths));

 schedule_work(&m->trigger_event);

out:
 spin_unlock_irqrestore(&m->lock, flags);

 return 0;
}
