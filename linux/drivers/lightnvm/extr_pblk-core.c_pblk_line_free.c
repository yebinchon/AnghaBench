
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int bitmap_pool; } ;
struct pblk_line {int invalid_bitmap; int map_bitmap; struct pblk* pblk; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;


 int mempool_free (int ,int ) ;
 int pblk_line_reinit (struct pblk_line*) ;

void pblk_line_free(struct pblk_line *line)
{
 struct pblk *pblk = line->pblk;
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;

 mempool_free(line->map_bitmap, l_mg->bitmap_pool);
 mempool_free(line->invalid_bitmap, l_mg->bitmap_pool);

 pblk_line_reinit(line);
}
