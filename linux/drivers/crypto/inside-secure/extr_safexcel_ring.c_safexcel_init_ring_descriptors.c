
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct safexcel_desc_ring {int offset; void* base; void* read; void* base_end; void* write; int base_dma; } ;
struct TYPE_2__ {int cd_offset; int rd_offset; } ;
struct safexcel_crypto_priv {int dev; TYPE_1__ config; } ;


 int EIP197_DEFAULT_RING_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dmam_alloc_coherent (int ,int,int *,int ) ;

int safexcel_init_ring_descriptors(struct safexcel_crypto_priv *priv,
       struct safexcel_desc_ring *cdr,
       struct safexcel_desc_ring *rdr)
{
 cdr->offset = sizeof(u32) * priv->config.cd_offset;
 cdr->base = dmam_alloc_coherent(priv->dev,
     cdr->offset * EIP197_DEFAULT_RING_SIZE,
     &cdr->base_dma, GFP_KERNEL);
 if (!cdr->base)
  return -ENOMEM;
 cdr->write = cdr->base;
 cdr->base_end = cdr->base + cdr->offset * (EIP197_DEFAULT_RING_SIZE - 1);
 cdr->read = cdr->base;

 rdr->offset = sizeof(u32) * priv->config.rd_offset;
 rdr->base = dmam_alloc_coherent(priv->dev,
     rdr->offset * EIP197_DEFAULT_RING_SIZE,
     &rdr->base_dma, GFP_KERNEL);
 if (!rdr->base)
  return -ENOMEM;
 rdr->write = rdr->base;
 rdr->base_end = rdr->base + rdr->offset * (EIP197_DEFAULT_RING_SIZE - 1);
 rdr->read = rdr->base;

 return 0;
}
