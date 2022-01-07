
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_desc_ring {int write; int read; int offset; int base; int base_end; } ;
struct safexcel_crypto_priv {int dummy; } ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static void *safexcel_ring_next_wptr(struct safexcel_crypto_priv *priv,
         struct safexcel_desc_ring *ring)
{
 void *ptr = ring->write;

 if ((ring->write == ring->read - ring->offset) ||
     (ring->read == ring->base && ring->write == ring->base_end))
  return ERR_PTR(-ENOMEM);

 if (ring->write == ring->base_end)
  ring->write = ring->base;
 else
  ring->write += ring->offset;

 return ptr;
}
