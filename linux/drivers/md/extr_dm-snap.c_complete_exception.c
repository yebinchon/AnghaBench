
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_snapshot {TYPE_2__* store; } ;
struct dm_snap_pending_exception {int copy_error; int e; struct dm_snapshot* snap; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* commit_exception ) (TYPE_2__*,int *,int,int ,struct dm_snap_pending_exception*) ;} ;


 int pending_complete ;
 int stub1 (TYPE_2__*,int *,int,int ,struct dm_snap_pending_exception*) ;

__attribute__((used)) static void complete_exception(struct dm_snap_pending_exception *pe)
{
 struct dm_snapshot *s = pe->snap;


 s->store->type->commit_exception(s->store, &pe->e, !pe->copy_error,
      pending_complete, pe);
}
