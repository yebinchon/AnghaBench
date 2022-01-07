
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int rh; int io_client; TYPE_1__* mirror; } ;
struct dm_target {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dm_io_client_destroy (int ) ;
 int dm_put_device (struct dm_target*,int ) ;
 int dm_region_hash_destroy (int ) ;
 int kfree (struct mirror_set*) ;

__attribute__((used)) static void free_context(struct mirror_set *ms, struct dm_target *ti,
    unsigned int m)
{
 while (m--)
  dm_put_device(ti, ms->mirror[m].dev);

 dm_io_client_destroy(ms->io_client);
 dm_region_hash_destroy(ms->rh);
 kfree(ms);
}
