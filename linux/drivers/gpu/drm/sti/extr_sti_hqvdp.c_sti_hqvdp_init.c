
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sti_hqvdp_cmd {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct sti_hqvdp {int hqvdp_cmd; scalar_t__ hqvdp_cmd_paddr; int dev; TYPE_1__ vtg_nb; } ;
typedef scalar_t__ dma_addr_t ;


 int DRM_ERROR (char*) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int NB_VDP_CMD ;
 int dma_alloc_wc (int ,int,scalar_t__*,int) ;
 int memset (int ,int ,int) ;
 int sti_hqvdp_vtg_cb ;

__attribute__((used)) static void sti_hqvdp_init(struct sti_hqvdp *hqvdp)
{
 int size;
 dma_addr_t dma_addr;

 hqvdp->vtg_nb.notifier_call = sti_hqvdp_vtg_cb;


 size = NB_VDP_CMD * sizeof(struct sti_hqvdp_cmd);
 hqvdp->hqvdp_cmd = dma_alloc_wc(hqvdp->dev, size,
     &dma_addr,
     GFP_KERNEL | GFP_DMA);
 if (!hqvdp->hqvdp_cmd) {
  DRM_ERROR("Failed to allocate memory for VDP cmd\n");
  return;
 }

 hqvdp->hqvdp_cmd_paddr = (u32)dma_addr;
 memset(hqvdp->hqvdp_cmd, 0, size);
}
