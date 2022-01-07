
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_ctx {unsigned int region_size; struct dm_target* ti; } ;
struct dm_target {struct switch_ctx* private; } ;


 int GFP_KERNEL ;
 struct switch_ctx* kzalloc (int ,int ) ;
 int path_list ;
 int struct_size (struct switch_ctx*,int ,unsigned int) ;

__attribute__((used)) static struct switch_ctx *alloc_switch_ctx(struct dm_target *ti, unsigned nr_paths,
        unsigned region_size)
{
 struct switch_ctx *sctx;

 sctx = kzalloc(struct_size(sctx, path_list, nr_paths), GFP_KERNEL);
 if (!sctx)
  return ((void*)0);

 sctx->ti = ti;
 sctx->region_size = region_size;

 ti->private = sctx;

 return sctx;
}
