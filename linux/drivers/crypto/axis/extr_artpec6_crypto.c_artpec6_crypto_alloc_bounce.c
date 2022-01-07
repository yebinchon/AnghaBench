
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_bounce_buffer {int buf; } ;
typedef int gfp_t ;


 int ARTPEC_CACHE_LINE_MAX ;
 int PTR_ALIGN (void*,int) ;
 struct artpec6_crypto_bounce_buffer* kzalloc (size_t,int ) ;

__attribute__((used)) static struct artpec6_crypto_bounce_buffer *
artpec6_crypto_alloc_bounce(gfp_t flags)
{
 void *base;
 size_t alloc_size = sizeof(struct artpec6_crypto_bounce_buffer) +
       2 * ARTPEC_CACHE_LINE_MAX;
 struct artpec6_crypto_bounce_buffer *bbuf = kzalloc(alloc_size, flags);

 if (!bbuf)
  return ((void*)0);

 base = bbuf + 1;
 bbuf->buf = PTR_ALIGN(base, ARTPEC_CACHE_LINE_MAX);
 return bbuf;
}
