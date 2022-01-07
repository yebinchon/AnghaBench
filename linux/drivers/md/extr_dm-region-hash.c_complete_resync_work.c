
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_region_hash {int recovery_count; int context; int (* wakeup_all_recovery_waiters ) (int ) ;int recovery_in_flight; int (* dispatch_bios ) (int ,int *) ;TYPE_2__* log; } ;
struct dm_region {int delayed_bios; int key; struct dm_region_hash* rh; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* set_region_sync ) (TYPE_2__*,int ,int) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (TYPE_2__*,int ,int) ;
 int stub2 (int ,int *) ;
 int stub3 (int ) ;
 int up (int *) ;

__attribute__((used)) static void complete_resync_work(struct dm_region *reg, int success)
{
 struct dm_region_hash *rh = reg->rh;

 rh->log->type->set_region_sync(rh->log, reg->key, success);
 rh->dispatch_bios(rh->context, &reg->delayed_bios);
 if (atomic_dec_and_test(&rh->recovery_in_flight))
  rh->wakeup_all_recovery_waiters(rh->context);
 up(&rh->recovery_count);
}
