
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct caam_jrentry_info {int desc_size; int desc_addr_dma; void* cbkarg; void* callbk; int * desc_addr_virt; } ;
struct caam_drv_private_jr {int head; int inplock; TYPE_1__* rregs; scalar_t__ inpring_avail; int inpring; struct caam_jrentry_info* entinfo; int tail; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int inpring_avail; int inpring_jobadd; } ;


 scalar_t__ CIRC_SPACE (int,int,int) ;
 int DMA_TO_DEVICE ;
 int EBUSY ;
 int EIO ;
 int HDR_JD_LENGTH_MASK ;
 int JOBR_DEPTH ;
 int READ_ONCE (int ) ;
 int caam32_to_cpu (int ) ;
 int cpu_to_caam_dma (int ) ;
 int dev_err (struct device*,char*) ;
 struct caam_drv_private_jr* dev_get_drvdata (struct device*) ;
 int dma_map_single (struct device*,int *,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int jr_inpentry_set (int ,int,int ) ;
 scalar_t__ rd_reg32 (int *) ;
 int smp_wmb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wr_reg32 (int *,int) ;

int caam_jr_enqueue(struct device *dev, u32 *desc,
      void (*cbk)(struct device *dev, u32 *desc,
    u32 status, void *areq),
      void *areq)
{
 struct caam_drv_private_jr *jrp = dev_get_drvdata(dev);
 struct caam_jrentry_info *head_entry;
 int head, tail, desc_size;
 dma_addr_t desc_dma;

 desc_size = (caam32_to_cpu(*desc) & HDR_JD_LENGTH_MASK) * sizeof(u32);
 desc_dma = dma_map_single(dev, desc, desc_size, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, desc_dma)) {
  dev_err(dev, "caam_jr_enqueue(): can't map jobdesc\n");
  return -EIO;
 }

 spin_lock_bh(&jrp->inplock);

 head = jrp->head;
 tail = READ_ONCE(jrp->tail);

 if (!jrp->inpring_avail ||
     CIRC_SPACE(head, tail, JOBR_DEPTH) <= 0) {
  spin_unlock_bh(&jrp->inplock);
  dma_unmap_single(dev, desc_dma, desc_size, DMA_TO_DEVICE);
  return -EBUSY;
 }

 head_entry = &jrp->entinfo[head];
 head_entry->desc_addr_virt = desc;
 head_entry->desc_size = desc_size;
 head_entry->callbk = (void *)cbk;
 head_entry->cbkarg = areq;
 head_entry->desc_addr_dma = desc_dma;

 jr_inpentry_set(jrp->inpring, head, cpu_to_caam_dma(desc_dma));






 smp_wmb();

 jrp->head = (head + 1) & (JOBR_DEPTH - 1);
 wr_reg32(&jrp->rregs->inpring_jobadd, 1);

 jrp->inpring_avail--;
 if (!jrp->inpring_avail)
  jrp->inpring_avail = rd_reg32(&jrp->rregs->inpring_avail);

 spin_unlock_bh(&jrp->inplock);

 return 0;
}
