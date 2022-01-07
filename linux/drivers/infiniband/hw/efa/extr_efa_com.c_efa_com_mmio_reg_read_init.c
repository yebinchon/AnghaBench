
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_mmio_read {int mmio_read_timeout; scalar_t__ seq_num; TYPE_1__* read_resp; int read_resp_dma_addr; int lock; } ;
struct efa_com_dev {int dmadev; struct efa_com_mmio_read mmio_read; } ;
struct TYPE_2__ {scalar_t__ req_id; } ;


 int EFA_REG_READ_TIMEOUT_US ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* dma_alloc_coherent (int ,int,int *,int ) ;
 int efa_com_mmio_reg_read_resp_addr_init (struct efa_com_dev*) ;
 int spin_lock_init (int *) ;

int efa_com_mmio_reg_read_init(struct efa_com_dev *edev)
{
 struct efa_com_mmio_read *mmio_read = &edev->mmio_read;

 spin_lock_init(&mmio_read->lock);
 mmio_read->read_resp =
  dma_alloc_coherent(edev->dmadev, sizeof(*mmio_read->read_resp),
       &mmio_read->read_resp_dma_addr, GFP_KERNEL);
 if (!mmio_read->read_resp)
  return -ENOMEM;

 efa_com_mmio_reg_read_resp_addr_init(edev);

 mmio_read->read_resp->req_id = 0;
 mmio_read->seq_num = 0;
 mmio_read->mmio_read_timeout = EFA_REG_READ_TIMEOUT_US;

 return 0;
}
