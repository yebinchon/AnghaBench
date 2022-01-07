
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_ctx {int region_size_bits; unsigned int nr_paths; int region_size; } ;
typedef int sector_t ;


 int sector_div (int,int ) ;
 unsigned int switch_region_table_read (struct switch_ctx*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned switch_get_path_nr(struct switch_ctx *sctx, sector_t offset)
{
 unsigned path_nr;
 sector_t p;

 p = offset;
 if (sctx->region_size_bits >= 0)
  p >>= sctx->region_size_bits;
 else
  sector_div(p, sctx->region_size);

 path_nr = switch_region_table_read(sctx, p);


 if (unlikely(path_nr >= sctx->nr_paths))
  path_nr = 0;

 return path_nr;
}
