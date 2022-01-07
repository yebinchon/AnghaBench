
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ dma_low; scalar_t__ dma_ptr; } ;
typedef TYPE_1__ drm_via_private_t ;



__attribute__((used)) static inline uint32_t *via_get_dma(drm_via_private_t *dev_priv)
{
 return (uint32_t *) (dev_priv->dma_ptr + dev_priv->dma_low);
}
