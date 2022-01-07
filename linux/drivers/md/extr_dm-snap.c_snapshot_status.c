
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {unsigned int discard_zeroes_cow; unsigned int discard_passdown_origin; TYPE_4__* store; TYPE_2__* cow; TYPE_1__* origin; int lock; int snapshot_overflowed; int merge_failed; int valid; } ;
typedef int status_type_t ;
typedef scalar_t__ sector_t ;
struct TYPE_9__ {TYPE_3__* type; } ;
struct TYPE_8__ {unsigned int (* status ) (TYPE_4__*,int,char*,int ) ;int (* usage ) (TYPE_4__*,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {int name; } ;


 int DMEMIT (char*,...) ;


 int down_write (int *) ;
 int stub1 (TYPE_4__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 unsigned int stub2 (TYPE_4__*,int,char*,int ) ;
 int up_write (int *) ;

__attribute__((used)) static void snapshot_status(struct dm_target *ti, status_type_t type,
       unsigned status_flags, char *result, unsigned maxlen)
{
 unsigned sz = 0;
 struct dm_snapshot *snap = ti->private;
 unsigned num_features;

 switch (type) {
 case 129:

  down_write(&snap->lock);

  if (!snap->valid)
   DMEMIT("Invalid");
  else if (snap->merge_failed)
   DMEMIT("Merge failed");
  else if (snap->snapshot_overflowed)
   DMEMIT("Overflow");
  else {
   if (snap->store->type->usage) {
    sector_t total_sectors, sectors_allocated,
      metadata_sectors;
    snap->store->type->usage(snap->store,
        &total_sectors,
        &sectors_allocated,
        &metadata_sectors);
    DMEMIT("%llu/%llu %llu",
           (unsigned long long)sectors_allocated,
           (unsigned long long)total_sectors,
           (unsigned long long)metadata_sectors);
   }
   else
    DMEMIT("Unknown");
  }

  up_write(&snap->lock);

  break;

 case 128:





  DMEMIT("%s %s", snap->origin->name, snap->cow->name);
  sz += snap->store->type->status(snap->store, type, result + sz,
      maxlen - sz);
  num_features = snap->discard_zeroes_cow + snap->discard_passdown_origin;
  if (num_features) {
   DMEMIT(" %u", num_features);
   if (snap->discard_zeroes_cow)
    DMEMIT(" discard_zeroes_cow");
   if (snap->discard_passdown_origin)
    DMEMIT(" discard_passdown_origin");
  }
  break;
 }
}
