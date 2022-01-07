
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int bitmap_pool; } ;
struct pblk_line {int * emeta; int * smeta; int * map_bitmap; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;


 int mempool_free (int *,int ) ;

void pblk_line_recov_close(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;

 mempool_free(line->map_bitmap, l_mg->bitmap_pool);
 line->map_bitmap = ((void*)0);
 line->smeta = ((void*)0);
 line->emeta = ((void*)0);
}
