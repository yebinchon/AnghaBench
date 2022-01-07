
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_ctx {unsigned long nr_regions; unsigned int nr_paths; } ;


 int switch_region_table_write (struct switch_ctx*,unsigned long,unsigned int) ;

__attribute__((used)) static void initialise_region_table(struct switch_ctx *sctx)
{
 unsigned path_nr = 0;
 unsigned long region_nr;

 for (region_nr = 0; region_nr < sctx->nr_regions; region_nr++) {
  switch_region_table_write(sctx, region_nr, path_nr);
  if (++path_nr >= sctx->nr_paths)
   path_nr = 0;
 }
}
