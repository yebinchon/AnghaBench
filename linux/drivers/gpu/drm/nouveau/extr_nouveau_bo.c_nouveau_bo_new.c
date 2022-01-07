
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u64 ;
struct sg_table {int dummy; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_bo {int dummy; } ;
struct dma_resv {int dummy; } ;


 scalar_t__ IS_ERR (struct nouveau_bo*) ;
 int PTR_ERR (struct nouveau_bo*) ;
 struct nouveau_bo* nouveau_bo_alloc (struct nouveau_cli*,int *,int*,int ,int ,int ) ;
 int nouveau_bo_init (struct nouveau_bo*,int ,int,int ,struct sg_table*,struct dma_resv*) ;

int
nouveau_bo_new(struct nouveau_cli *cli, u64 size, int align,
        uint32_t flags, uint32_t tile_mode, uint32_t tile_flags,
        struct sg_table *sg, struct dma_resv *robj,
        struct nouveau_bo **pnvbo)
{
 struct nouveau_bo *nvbo;
 int ret;

 nvbo = nouveau_bo_alloc(cli, &size, &align, flags, tile_mode,
    tile_flags);
 if (IS_ERR(nvbo))
  return PTR_ERR(nvbo);

 ret = nouveau_bo_init(nvbo, size, align, flags, sg, robj);
 if (ret)
  return ret;

 *pnvbo = nvbo;
 return 0;
}
