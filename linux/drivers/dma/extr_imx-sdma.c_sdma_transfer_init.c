
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdma_desc {int num_bd; struct sdma_channel* sdmac; scalar_t__ buf_ptail; scalar_t__ buf_tail; scalar_t__ chn_real_count; scalar_t__ chn_count; } ;
struct sdma_channel {int direction; scalar_t__ flags; int status; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int DMA_IN_PROGRESS ;
 int DMA_MEM_TO_MEM ;
 int GFP_NOWAIT ;
 int kfree (struct sdma_desc*) ;
 struct sdma_desc* kzalloc (int,int ) ;
 scalar_t__ sdma_alloc_bd (struct sdma_desc*) ;
 int sdma_config_ownership (struct sdma_channel*,int,int,int) ;
 scalar_t__ sdma_load_context (struct sdma_channel*) ;

__attribute__((used)) static struct sdma_desc *sdma_transfer_init(struct sdma_channel *sdmac,
    enum dma_transfer_direction direction, u32 bds)
{
 struct sdma_desc *desc;

 desc = kzalloc((sizeof(*desc)), GFP_NOWAIT);
 if (!desc)
  goto err_out;

 sdmac->status = DMA_IN_PROGRESS;
 sdmac->direction = direction;
 sdmac->flags = 0;

 desc->chn_count = 0;
 desc->chn_real_count = 0;
 desc->buf_tail = 0;
 desc->buf_ptail = 0;
 desc->sdmac = sdmac;
 desc->num_bd = bds;

 if (sdma_alloc_bd(desc))
  goto err_desc_out;


 if (direction == DMA_MEM_TO_MEM)
  sdma_config_ownership(sdmac, 0, 1, 0);

 if (sdma_load_context(sdmac))
  goto err_desc_out;

 return desc;

err_desc_out:
 kfree(desc);
err_out:
 return ((void*)0);
}
