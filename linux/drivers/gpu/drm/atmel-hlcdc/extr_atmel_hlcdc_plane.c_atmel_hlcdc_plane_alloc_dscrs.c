
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {TYPE_1__* dev; } ;
struct atmel_hlcdc_plane_state {struct atmel_hlcdc_dma_channel_dscr** dscrs; } ;
struct atmel_hlcdc_dma_channel_dscr {void* self; int ctrl; void* next; scalar_t__ addr; } ;
struct atmel_hlcdc_dc {int dscrpool; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {struct atmel_hlcdc_dc* dev_private; } ;


 int ARRAY_SIZE (struct atmel_hlcdc_dma_channel_dscr**) ;
 int ATMEL_HLCDC_LAYER_DFETCH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct atmel_hlcdc_dma_channel_dscr* dma_pool_alloc (int ,int ,void**) ;
 int dma_pool_free (int ,struct atmel_hlcdc_dma_channel_dscr*,void*) ;

__attribute__((used)) static int atmel_hlcdc_plane_alloc_dscrs(struct drm_plane *p,
      struct atmel_hlcdc_plane_state *state)
{
 struct atmel_hlcdc_dc *dc = p->dev->dev_private;
 int i;

 for (i = 0; i < ARRAY_SIZE(state->dscrs); i++) {
  struct atmel_hlcdc_dma_channel_dscr *dscr;
  dma_addr_t dscr_dma;

  dscr = dma_pool_alloc(dc->dscrpool, GFP_KERNEL, &dscr_dma);
  if (!dscr)
   goto err;

  dscr->addr = 0;
  dscr->next = dscr_dma;
  dscr->self = dscr_dma;
  dscr->ctrl = ATMEL_HLCDC_LAYER_DFETCH;

  state->dscrs[i] = dscr;
 }

 return 0;

err:
 for (i--; i >= 0; i--) {
  dma_pool_free(dc->dscrpool, state->dscrs[i],
         state->dscrs[i]->self);
 }

 return -ENOMEM;
}
