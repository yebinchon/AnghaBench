
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* dev; } ;
struct TYPE_10__ {int work; } ;
struct pgpath {int is_active; TYPE_6__ path; TYPE_3__ activate_path; TYPE_2__* pg; } ;
struct multipath {TYPE_7__* ti; int lock; int trigger_event; int pg_init_in_progress; TYPE_2__* current_pg; scalar_t__ hw_handler_name; int * current_pgpath; int nr_valid_paths; } ;
struct TYPE_14__ {int table; } ;
struct TYPE_12__ {TYPE_1__* type; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_9__ {TYPE_5__ ps; struct multipath* m; } ;
struct TYPE_8__ {int (* reinstate_path ) (TYPE_5__*,TYPE_6__*) ;} ;


 int DMWARN (char*,int ) ;
 int DM_UEVENT_PATH_REINSTATED ;
 int atomic_inc (int *) ;
 unsigned int atomic_inc_return (int *) ;
 int dm_path_uevent (int ,TYPE_7__*,int ,unsigned int) ;
 int dm_table_run_md_queue_async (int ) ;
 int kmpath_handlerd ;
 int process_queued_io_list (struct multipath*) ;
 scalar_t__ queue_work (int ,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_5__*,TYPE_6__*) ;

__attribute__((used)) static int reinstate_path(struct pgpath *pgpath)
{
 int r = 0, run_queue = 0;
 unsigned long flags;
 struct multipath *m = pgpath->pg->m;
 unsigned nr_valid_paths;

 spin_lock_irqsave(&m->lock, flags);

 if (pgpath->is_active)
  goto out;

 DMWARN("Reinstating path %s.", pgpath->path.dev->name);

 r = pgpath->pg->ps.type->reinstate_path(&pgpath->pg->ps, &pgpath->path);
 if (r)
  goto out;

 pgpath->is_active = 1;

 nr_valid_paths = atomic_inc_return(&m->nr_valid_paths);
 if (nr_valid_paths == 1) {
  m->current_pgpath = ((void*)0);
  run_queue = 1;
 } else if (m->hw_handler_name && (m->current_pg == pgpath->pg)) {
  if (queue_work(kmpath_handlerd, &pgpath->activate_path.work))
   atomic_inc(&m->pg_init_in_progress);
 }

 dm_path_uevent(DM_UEVENT_PATH_REINSTATED, m->ti,
         pgpath->path.dev->name, nr_valid_paths);

 schedule_work(&m->trigger_event);

out:
 spin_unlock_irqrestore(&m->lock, flags);
 if (run_queue) {
  dm_table_run_md_queue_async(m->ti->table);
  process_queued_io_list(m);
 }

 return r;
}
