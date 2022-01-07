
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct per_bio_data {int hook_info; } ;
struct dm_cache_migration {int cache; int k; TYPE_1__* op; struct bio* overwrite_bio; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {scalar_t__ op; int cblock; } ;


 scalar_t__ POLICY_PROMOTE ;
 int accounted_request (int ,struct bio*) ;
 int dm_hook_bio (int *,struct bio*,int ,struct dm_cache_migration*) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;
 int init_continuation (int *,void (*) (struct work_struct*)) ;
 int overwrite_endio ;
 int remap_to_cache (int ,struct bio*,int ) ;
 int remap_to_origin (int ,struct bio*) ;

__attribute__((used)) static void overwrite(struct dm_cache_migration *mg,
        void (*continuation)(struct work_struct *))
{
 struct bio *bio = mg->overwrite_bio;
 struct per_bio_data *pb = get_per_bio_data(bio);

 dm_hook_bio(&pb->hook_info, bio, overwrite_endio, mg);





 if (mg->op->op == POLICY_PROMOTE)
  remap_to_cache(mg->cache, bio, mg->op->cblock);
 else
  remap_to_origin(mg->cache, bio);

 init_continuation(&mg->k, continuation);
 accounted_request(mg->cache, bio);
}
