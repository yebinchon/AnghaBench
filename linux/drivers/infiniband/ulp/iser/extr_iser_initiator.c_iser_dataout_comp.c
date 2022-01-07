
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_tx_desc {int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct ib_wc {scalar_t__ status; TYPE_1__* qp; int wr_cqe; } ;
struct ib_cq {int dummy; } ;
struct ib_conn {struct iser_device* device; } ;
struct TYPE_4__ {int desc_cache; } ;
struct TYPE_3__ {struct ib_conn* qp_context; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ IB_WC_SUCCESS ;
 int ISER_HEADERS_LEN ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 TYPE_2__ ig ;
 int iser_err_comp (struct ib_wc*,char*) ;
 struct iser_tx_desc* iser_tx (int ) ;
 int kmem_cache_free (int ,struct iser_tx_desc*) ;
 scalar_t__ unlikely (int) ;

void iser_dataout_comp(struct ib_cq *cq, struct ib_wc *wc)
{
 struct iser_tx_desc *desc = iser_tx(wc->wr_cqe);
 struct ib_conn *ib_conn = wc->qp->qp_context;
 struct iser_device *device = ib_conn->device;

 if (unlikely(wc->status != IB_WC_SUCCESS))
  iser_err_comp(wc, "dataout");

 ib_dma_unmap_single(device->ib_device, desc->dma_addr,
       ISER_HEADERS_LEN, DMA_TO_DEVICE);
 kmem_cache_free(ig.desc_cache, desc);
}
