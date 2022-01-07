
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int bitmap_pool; } ;
struct pblk_line_meta {int sec_bitmap_len; } ;
struct pblk_line {int * map_bitmap; void* invalid_bitmap; } ;
struct pblk {struct pblk_line_mgmt l_mg; struct pblk_line_meta lm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* mempool_alloc (int ,int ) ;
 int mempool_free (int *,int ) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int pblk_line_alloc_bitmaps(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;

 line->map_bitmap = mempool_alloc(l_mg->bitmap_pool, GFP_KERNEL);
 if (!line->map_bitmap)
  return -ENOMEM;

 memset(line->map_bitmap, 0, lm->sec_bitmap_len);


 line->invalid_bitmap = mempool_alloc(l_mg->bitmap_pool, GFP_KERNEL);
 if (!line->invalid_bitmap) {
  mempool_free(line->map_bitmap, l_mg->bitmap_pool);
  line->map_bitmap = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
