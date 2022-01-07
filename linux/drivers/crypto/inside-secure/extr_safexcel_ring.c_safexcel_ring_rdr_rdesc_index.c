
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safexcel_result_desc {int dummy; } ;
struct safexcel_desc_ring {void* base; int offset; } ;
struct safexcel_crypto_priv {TYPE_1__* ring; } ;
struct TYPE_2__ {struct safexcel_desc_ring rdr; } ;



inline int safexcel_ring_rdr_rdesc_index(struct safexcel_crypto_priv *priv,
      int ring,
      struct safexcel_result_desc *rdesc)
{
 struct safexcel_desc_ring *rdr = &priv->ring[ring].rdr;

 return ((void *)rdesc - rdr->base) / rdr->offset;
}
