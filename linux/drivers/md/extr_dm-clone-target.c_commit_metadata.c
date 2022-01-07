
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clone {int commit_lock; TYPE_1__* ti; int cmd; } ;
struct TYPE_2__ {int table; } ;


 scalar_t__ CM_READ_ONLY ;
 int EPERM ;
 int __metadata_operation_failed (struct clone*,char*,int) ;
 int dm_clone_changed_this_transaction (int ) ;
 scalar_t__ dm_clone_is_hydration_done (int ) ;
 int dm_clone_metadata_commit (int ) ;
 int dm_table_event (int ) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int commit_metadata(struct clone *clone)
{
 int r = 0;

 mutex_lock(&clone->commit_lock);

 if (!dm_clone_changed_this_transaction(clone->cmd))
  goto out;

 if (unlikely(get_clone_mode(clone) >= CM_READ_ONLY)) {
  r = -EPERM;
  goto out;
 }

 r = dm_clone_metadata_commit(clone->cmd);

 if (unlikely(r)) {
  __metadata_operation_failed(clone, "dm_clone_metadata_commit", r);
  goto out;
 }

 if (dm_clone_is_hydration_done(clone->cmd))
  dm_table_event(clone->ti->table);
out:
 mutex_unlock(&clone->commit_lock);

 return r;
}
