
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_desc_ring {scalar_t__ write; scalar_t__ read; scalar_t__ base; scalar_t__ base_end; scalar_t__ offset; } ;
struct safexcel_crypto_priv {int dummy; } ;



void safexcel_ring_rollback_wptr(struct safexcel_crypto_priv *priv,
     struct safexcel_desc_ring *ring)
{
 if (ring->write == ring->read)
  return;

 if (ring->write == ring->base)
  ring->write = ring->base_end;
 else
  ring->write -= ring->offset;
}
