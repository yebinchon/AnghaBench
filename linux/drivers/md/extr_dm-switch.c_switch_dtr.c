
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_ctx {size_t nr_paths; int region_table; TYPE_1__* path_list; } ;
struct dm_target {struct switch_ctx* private; } ;
struct TYPE_2__ {int dmdev; } ;


 int dm_put_device (struct dm_target*,int ) ;
 int kfree (struct switch_ctx*) ;
 int vfree (int ) ;

__attribute__((used)) static void switch_dtr(struct dm_target *ti)
{
 struct switch_ctx *sctx = ti->private;

 while (sctx->nr_paths--)
  dm_put_device(ti, sctx->path_list[sctx->nr_paths].dmdev);

 vfree(sctx->region_table);
 kfree(sctx);
}
