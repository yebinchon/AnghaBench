
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_events {int * pipes; int global; } ;
struct komeda_dev {struct d71_dev* chip_data; } ;
struct d71_dev {int * pipes; int gcu_addr; } ;
typedef int irqreturn_t ;


 int BLK_IRQ_CLEAR ;
 int BLK_IRQ_RAW_STATUS ;
 int BLK_STATUS ;
 int GCU_IRQ_CVAL0 ;
 int GCU_IRQ_CVAL1 ;
 int GCU_IRQ_ERR ;
 int GCU_STATUS_MERR ;
 int GLB_IRQ_STATUS ;
 int GLB_IRQ_STATUS_GCU ;
 int GLB_IRQ_STATUS_PIPE0 ;
 int GLB_IRQ_STATUS_PIPE1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KOMEDA_ERR_MERR ;
 int KOMEDA_EVENT_FLIP ;
 int get_pipeline_event (int ,int) ;
 int malidp_read32 (int ,int ) ;
 int malidp_write32 (int ,int ,int) ;
 int malidp_write32_mask (int ,int ,int,int ) ;

__attribute__((used)) static irqreturn_t
d71_irq_handler(struct komeda_dev *mdev, struct komeda_events *evts)
{
 struct d71_dev *d71 = mdev->chip_data;
 u32 status, gcu_status, raw_status;

 gcu_status = malidp_read32(d71->gcu_addr, GLB_IRQ_STATUS);

 if (gcu_status & GLB_IRQ_STATUS_GCU) {
  raw_status = malidp_read32(d71->gcu_addr, BLK_IRQ_RAW_STATUS);
  if (raw_status & GCU_IRQ_CVAL0)
   evts->pipes[0] |= KOMEDA_EVENT_FLIP;
  if (raw_status & GCU_IRQ_CVAL1)
   evts->pipes[1] |= KOMEDA_EVENT_FLIP;
  if (raw_status & GCU_IRQ_ERR) {
   status = malidp_read32(d71->gcu_addr, BLK_STATUS);
   if (status & GCU_STATUS_MERR) {
    evts->global |= KOMEDA_ERR_MERR;
    malidp_write32_mask(d71->gcu_addr, BLK_STATUS,
          GCU_STATUS_MERR, 0);
   }
  }

  malidp_write32(d71->gcu_addr, BLK_IRQ_CLEAR, raw_status);
 }

 if (gcu_status & GLB_IRQ_STATUS_PIPE0)
  evts->pipes[0] |= get_pipeline_event(d71->pipes[0], gcu_status);

 if (gcu_status & GLB_IRQ_STATUS_PIPE1)
  evts->pipes[1] |= get_pipeline_event(d71->pipes[1], gcu_status);

 return gcu_status ? IRQ_HANDLED : IRQ_NONE;
}
