
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int nr_lines; struct pblk_emeta* vsc_list; struct pblk_emeta* bb_template; struct pblk_emeta* bb_aux; struct pblk_emeta** sline_meta; int bitmap_cache; int bitmap_pool; struct pblk_emeta** eline_meta; int gc_lock; int close_lock; int free_lock; int gc_low_list; int ** gc_lists; int gc_mid_list; int gc_high_list; int gc_werr_list; int emeta_list; int gc_empty_list; int gc_full_list; int bad_list; int corrupt_list; int free_list; int meta_bitmap; scalar_t__ nr_free_lines; scalar_t__ d_seq_nr; scalar_t__ l_seq_nr; int * data_line; int log_line; } ;
struct pblk_line_meta {int smeta_len; int sec_per_line; int * emeta_sec; int * emeta_len; int sec_bitmap_len; } ;
struct pblk_emeta {int buf; int nr_entries; } ;
struct pblk {struct pblk_line_meta lm; struct pblk_line_mgmt l_mg; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int num_chk; int all_luns; int ws_opt; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
typedef int __le32 ;


 int EMPTY_ENTRY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PBLK_DATA_LINES ;
 int bitmap_set (struct pblk_emeta*,int,int) ;
 int bitmap_zero (int *,int) ;
 struct pblk_emeta cpu_to_le32 (int ) ;
 struct pblk_emeta* kcalloc (int,int,int ) ;
 int kfree (struct pblk_emeta*) ;
 void* kmalloc (int,int ) ;
 int kmem_cache_create (char*,int ,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int kvfree (int ) ;
 int kvmalloc (int ,int ) ;
 void* kzalloc (int ,int ) ;
 int mempool_create_slab_pool (int,int ) ;
 int mempool_destroy (int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pblk_line_mg_init(struct pblk *pblk)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;
 struct pblk_line_meta *lm = &pblk->lm;
 int i, bb_distance;

 l_mg->nr_lines = geo->num_chk;
 l_mg->log_line = l_mg->data_line = ((void*)0);
 l_mg->l_seq_nr = l_mg->d_seq_nr = 0;
 l_mg->nr_free_lines = 0;
 bitmap_zero(&l_mg->meta_bitmap, PBLK_DATA_LINES);

 INIT_LIST_HEAD(&l_mg->free_list);
 INIT_LIST_HEAD(&l_mg->corrupt_list);
 INIT_LIST_HEAD(&l_mg->bad_list);
 INIT_LIST_HEAD(&l_mg->gc_full_list);
 INIT_LIST_HEAD(&l_mg->gc_high_list);
 INIT_LIST_HEAD(&l_mg->gc_mid_list);
 INIT_LIST_HEAD(&l_mg->gc_low_list);
 INIT_LIST_HEAD(&l_mg->gc_empty_list);
 INIT_LIST_HEAD(&l_mg->gc_werr_list);

 INIT_LIST_HEAD(&l_mg->emeta_list);

 l_mg->gc_lists[0] = &l_mg->gc_werr_list;
 l_mg->gc_lists[1] = &l_mg->gc_high_list;
 l_mg->gc_lists[2] = &l_mg->gc_mid_list;
 l_mg->gc_lists[3] = &l_mg->gc_low_list;

 spin_lock_init(&l_mg->free_lock);
 spin_lock_init(&l_mg->close_lock);
 spin_lock_init(&l_mg->gc_lock);

 l_mg->vsc_list = kcalloc(l_mg->nr_lines, sizeof(__le32), GFP_KERNEL);
 if (!l_mg->vsc_list)
  goto fail;

 l_mg->bb_template = kzalloc(lm->sec_bitmap_len, GFP_KERNEL);
 if (!l_mg->bb_template)
  goto fail_free_vsc_list;

 l_mg->bb_aux = kzalloc(lm->sec_bitmap_len, GFP_KERNEL);
 if (!l_mg->bb_aux)
  goto fail_free_bb_template;




 for (i = 0; i < PBLK_DATA_LINES; i++) {
  l_mg->sline_meta[i] = kmalloc(lm->smeta_len, GFP_KERNEL);
  if (!l_mg->sline_meta[i])
   goto fail_free_smeta;
 }

 l_mg->bitmap_cache = kmem_cache_create("pblk_lm_bitmap",
   lm->sec_bitmap_len, 0, 0, ((void*)0));
 if (!l_mg->bitmap_cache)
  goto fail_free_smeta;


 l_mg->bitmap_pool = mempool_create_slab_pool(PBLK_DATA_LINES * 2,
    l_mg->bitmap_cache);
 if (!l_mg->bitmap_pool)
  goto fail_destroy_bitmap_cache;




 for (i = 0; i < PBLK_DATA_LINES; i++) {
  struct pblk_emeta *emeta;

  emeta = kmalloc(sizeof(struct pblk_emeta), GFP_KERNEL);
  if (!emeta)
   goto fail_free_emeta;

  emeta->buf = kvmalloc(lm->emeta_len[0], GFP_KERNEL);
  if (!emeta->buf) {
   kfree(emeta);
   goto fail_free_emeta;
  }

  emeta->nr_entries = lm->emeta_sec[0];
  l_mg->eline_meta[i] = emeta;
 }

 for (i = 0; i < l_mg->nr_lines; i++)
  l_mg->vsc_list[i] = cpu_to_le32(EMPTY_ENTRY);

 bb_distance = (geo->all_luns) * geo->ws_opt;
 for (i = 0; i < lm->sec_per_line; i += bb_distance)
  bitmap_set(l_mg->bb_template, i, geo->ws_opt);

 return 0;

fail_free_emeta:
 while (--i >= 0) {
  kvfree(l_mg->eline_meta[i]->buf);
  kfree(l_mg->eline_meta[i]);
 }

 mempool_destroy(l_mg->bitmap_pool);
fail_destroy_bitmap_cache:
 kmem_cache_destroy(l_mg->bitmap_cache);
fail_free_smeta:
 for (i = 0; i < PBLK_DATA_LINES; i++)
  kfree(l_mg->sline_meta[i]);
 kfree(l_mg->bb_aux);
fail_free_bb_template:
 kfree(l_mg->bb_template);
fail_free_vsc_list:
 kfree(l_mg->vsc_list);
fail:
 return -ENOMEM;
}
