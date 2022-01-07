
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_rec_ctx {int dummy; } ;
struct pblk_line_ws {int dummy; } ;
struct TYPE_2__ {void* ws; void* rec; void* g_rq; void* w_rq; } ;


 int ENOMEM ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (void*) ;
 TYPE_1__ pblk_caches ;
 int pblk_g_rq_size ;
 int pblk_w_rq_size ;

__attribute__((used)) static int pblk_create_global_caches(void)
{

 pblk_caches.ws = kmem_cache_create("pblk_blk_ws",
    sizeof(struct pblk_line_ws), 0, 0, ((void*)0));
 if (!pblk_caches.ws)
  return -ENOMEM;

 pblk_caches.rec = kmem_cache_create("pblk_rec",
    sizeof(struct pblk_rec_ctx), 0, 0, ((void*)0));
 if (!pblk_caches.rec)
  goto fail_destroy_ws;

 pblk_caches.g_rq = kmem_cache_create("pblk_g_rq", pblk_g_rq_size,
    0, 0, ((void*)0));
 if (!pblk_caches.g_rq)
  goto fail_destroy_rec;

 pblk_caches.w_rq = kmem_cache_create("pblk_w_rq", pblk_w_rq_size,
    0, 0, ((void*)0));
 if (!pblk_caches.w_rq)
  goto fail_destroy_g_rq;

 return 0;

fail_destroy_g_rq:
 kmem_cache_destroy(pblk_caches.g_rq);
fail_destroy_rec:
 kmem_cache_destroy(pblk_caches.rec);
fail_destroy_ws:
 kmem_cache_destroy(pblk_caches.ws);

 return -ENOMEM;
}
