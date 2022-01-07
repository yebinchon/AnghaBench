
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line_mgmt {int bitmap_cache; int bitmap_pool; TYPE_1__** eline_meta; TYPE_1__** sline_meta; TYPE_1__* vsc_list; TYPE_1__* bb_aux; TYPE_1__* bb_template; } ;
struct pblk {struct pblk_line_mgmt l_mg; } ;
struct TYPE_2__ {int buf; } ;


 int PBLK_DATA_LINES ;
 int kfree (TYPE_1__*) ;
 int kmem_cache_destroy (int ) ;
 int kvfree (int ) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void pblk_line_mg_free(struct pblk *pblk)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 int i;

 kfree(l_mg->bb_template);
 kfree(l_mg->bb_aux);
 kfree(l_mg->vsc_list);

 for (i = 0; i < PBLK_DATA_LINES; i++) {
  kfree(l_mg->sline_meta[i]);
  kvfree(l_mg->eline_meta[i]->buf);
  kfree(l_mg->eline_meta[i]);
 }

 mempool_destroy(l_mg->bitmap_pool);
 kmem_cache_destroy(l_mg->bitmap_cache);
}
