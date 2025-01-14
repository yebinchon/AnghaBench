
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dw_edma_chip {struct dw_edma* dw; struct device* dev; } ;
struct dw_edma {scalar_t__ wr_ch_cnt; scalar_t__ rd_ch_cnt; int nr_irqs; TYPE_1__* irq; int name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int msi; } ;


 int EINVAL ;
 int IRQF_SHARED ;
 int dw_edma_add_irq_mask (scalar_t__*,scalar_t__,scalar_t__) ;
 int dw_edma_dec_irq_alloc (int*,scalar_t__*,scalar_t__) ;
 int dw_edma_interrupt_common ;
 int dw_edma_interrupt_read ;
 int dw_edma_interrupt_write ;
 int get_cached_msi_msg (int ,int *) ;
 int pci_irq_vector (int ,int) ;
 int request_irq (int ,int ,int ,int ,TYPE_1__*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static int dw_edma_irq_request(struct dw_edma_chip *chip,
          u32 *wr_alloc, u32 *rd_alloc)
{
 struct device *dev = chip->dev;
 struct dw_edma *dw = chip->dw;
 u32 wr_mask = 1;
 u32 rd_mask = 1;
 int i, err = 0;
 u32 ch_cnt;

 ch_cnt = dw->wr_ch_cnt + dw->rd_ch_cnt;

 if (dw->nr_irqs < 1)
  return -EINVAL;

 if (dw->nr_irqs == 1) {

  err = request_irq(pci_irq_vector(to_pci_dev(dev), 0),
      dw_edma_interrupt_common,
      IRQF_SHARED, dw->name, &dw->irq[0]);
  if (err) {
   dw->nr_irqs = 0;
   return err;
  }

  get_cached_msi_msg(pci_irq_vector(to_pci_dev(dev), 0),
       &dw->irq[0].msi);
 } else {

  int tmp = dw->nr_irqs;

  while (tmp && (*wr_alloc + *rd_alloc) < ch_cnt) {
   dw_edma_dec_irq_alloc(&tmp, wr_alloc, dw->wr_ch_cnt);
   dw_edma_dec_irq_alloc(&tmp, rd_alloc, dw->rd_ch_cnt);
  }

  dw_edma_add_irq_mask(&wr_mask, *wr_alloc, dw->wr_ch_cnt);
  dw_edma_add_irq_mask(&rd_mask, *rd_alloc, dw->rd_ch_cnt);

  for (i = 0; i < (*wr_alloc + *rd_alloc); i++) {
   err = request_irq(pci_irq_vector(to_pci_dev(dev), i),
       i < *wr_alloc ?
      dw_edma_interrupt_write :
      dw_edma_interrupt_read,
       IRQF_SHARED, dw->name,
       &dw->irq[i]);
   if (err) {
    dw->nr_irqs = i;
    return err;
   }

   get_cached_msi_msg(pci_irq_vector(to_pci_dev(dev), i),
        &dw->irq[i].msi);
  }

  dw->nr_irqs = i;
 }

 return err;
}
