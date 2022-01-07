
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ dma_low; scalar_t__ dma_high; scalar_t__ dma_ptr; } ;
typedef TYPE_1__ drm_via_private_t ;


 int CMDBUF_ALIGNMENT_SIZE ;
 int via_cmdbuf_rewind (TYPE_1__*) ;
 scalar_t__ via_cmdbuf_wait (TYPE_1__*,unsigned int) ;

__attribute__((used)) static inline uint32_t *via_check_dma(drm_via_private_t * dev_priv,
          unsigned int size)
{
 if ((dev_priv->dma_low + size + 4 * CMDBUF_ALIGNMENT_SIZE) >
     dev_priv->dma_high) {
  via_cmdbuf_rewind(dev_priv);
 }
 if (via_cmdbuf_wait(dev_priv, size) != 0)
  return ((void*)0);

 return (uint32_t *) (dev_priv->dma_ptr + dev_priv->dma_low);
}
