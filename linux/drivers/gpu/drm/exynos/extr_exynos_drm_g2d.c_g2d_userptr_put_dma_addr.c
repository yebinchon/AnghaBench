
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct g2d_data {int drm_dev; } ;
struct g2d_cmdlist_userptr {struct g2d_cmdlist_userptr* sgt; int list; int out_of_list; int vec; int nents; int sgl; scalar_t__ in_pool; int refcount; } ;


 int DMA_BIDIRECTIONAL ;
 int IS_ERR (struct page**) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int frame_vector_count (int ) ;
 int frame_vector_destroy (int ) ;
 struct page** frame_vector_pages (int ) ;
 int kfree (struct g2d_cmdlist_userptr*) ;
 int list_del_init (int *) ;
 int put_vaddr_frames (int ) ;
 int set_page_dirty_lock (struct page*) ;
 int sg_free_table (struct g2d_cmdlist_userptr*) ;
 int to_dma_dev (int ) ;

__attribute__((used)) static void g2d_userptr_put_dma_addr(struct g2d_data *g2d,
     void *obj,
     bool force)
{
 struct g2d_cmdlist_userptr *g2d_userptr = obj;
 struct page **pages;

 if (!obj)
  return;

 if (force)
  goto out;

 atomic_dec(&g2d_userptr->refcount);

 if (atomic_read(&g2d_userptr->refcount) > 0)
  return;

 if (g2d_userptr->in_pool)
  return;

out:
 dma_unmap_sg(to_dma_dev(g2d->drm_dev), g2d_userptr->sgt->sgl,
   g2d_userptr->sgt->nents, DMA_BIDIRECTIONAL);

 pages = frame_vector_pages(g2d_userptr->vec);
 if (!IS_ERR(pages)) {
  int i;

  for (i = 0; i < frame_vector_count(g2d_userptr->vec); i++)
   set_page_dirty_lock(pages[i]);
 }
 put_vaddr_frames(g2d_userptr->vec);
 frame_vector_destroy(g2d_userptr->vec);

 if (!g2d_userptr->out_of_list)
  list_del_init(&g2d_userptr->list);

 sg_free_table(g2d_userptr->sgt);
 kfree(g2d_userptr->sgt);
 kfree(g2d_userptr);
}
