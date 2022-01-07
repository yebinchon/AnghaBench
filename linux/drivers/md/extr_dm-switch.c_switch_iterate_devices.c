
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_ctx {int nr_paths; TYPE_1__* path_list; } ;
struct dm_target {int len; struct switch_ctx* private; } ;
typedef int (* iterate_devices_callout_fn ) (struct dm_target*,int ,int ,int ,void*) ;
struct TYPE_2__ {int start; int dmdev; } ;



__attribute__((used)) static int switch_iterate_devices(struct dm_target *ti,
      iterate_devices_callout_fn fn, void *data)
{
 struct switch_ctx *sctx = ti->private;
 int path_nr;
 int r;

 for (path_nr = 0; path_nr < sctx->nr_paths; path_nr++) {
  r = fn(ti, sctx->path_list[path_nr].dmdev,
    sctx->path_list[path_nr].start, ti->len, data);
  if (r)
   return r;
 }

 return 0;
}
