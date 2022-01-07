
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_desc_ring {int offset; void* read; void* base; void* base_end; void* write; } ;
struct safexcel_crypto_priv {int dummy; } ;


 int ENOENT ;
 void* ERR_PTR (int ) ;

void *safexcel_ring_next_rptr(struct safexcel_crypto_priv *priv,
         struct safexcel_desc_ring *ring)
{
 void *ptr = ring->read;

 if (ring->write == ring->read)
  return ERR_PTR(-ENOENT);

 if (ring->read == ring->base_end)
  ring->read = ring->base;
 else
  ring->read += ring->offset;

 return ptr;
}
