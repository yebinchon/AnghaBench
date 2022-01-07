
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct artpec6_crypto_walk {int offset; int sg; } ;
struct artpec6_crypto_req_common {TYPE_1__* dma; int gfp_flags; } ;
struct artpec6_crypto_bounce_buffer {size_t length; int list; int buf; int offset; int sg; } ;
struct TYPE_2__ {int bounce_buffers; } ;


 int ENOMEM ;
 struct artpec6_crypto_bounce_buffer* artpec6_crypto_alloc_bounce (int ) ;
 int artpec6_crypto_setup_in_descr (struct artpec6_crypto_req_common*,int ,size_t,int) ;
 int kfree (struct artpec6_crypto_bounce_buffer*) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,size_t,int ) ;

__attribute__((used)) static int setup_bounce_buffer_in(struct artpec6_crypto_req_common *common,
      struct artpec6_crypto_walk *walk, size_t size)
{
 struct artpec6_crypto_bounce_buffer *bbuf;
 int ret;

 bbuf = artpec6_crypto_alloc_bounce(common->gfp_flags);
 if (!bbuf)
  return -ENOMEM;

 bbuf->length = size;
 bbuf->sg = walk->sg;
 bbuf->offset = walk->offset;

 ret = artpec6_crypto_setup_in_descr(common, bbuf->buf, size, 0);
 if (ret) {
  kfree(bbuf);
  return ret;
 }

 pr_debug("BOUNCE %zu offset %zu\n", size, walk->offset);
 list_add_tail(&bbuf->list, &common->dma->bounce_buffers);
 return 0;
}
