
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_v2_cmq_ring {int desc_num; scalar_t__ desc_dma_addr; } ;
struct TYPE_2__ {struct hns_roce_v2_cmq_ring crq; struct hns_roce_v2_cmq_ring csq; } ;
struct hns_roce_v2_priv {TYPE_1__ cmq; } ;
struct hns_roce_dev {scalar_t__ priv; } ;
typedef scalar_t__ dma_addr_t ;


 int HNS_ROCE_CMQ_DESC_NUM_S ;
 int ROCEE_RX_CMQ_BASEADDR_H_REG ;
 int ROCEE_RX_CMQ_BASEADDR_L_REG ;
 int ROCEE_RX_CMQ_DEPTH_REG ;
 int ROCEE_RX_CMQ_HEAD_REG ;
 int ROCEE_RX_CMQ_TAIL_REG ;
 int ROCEE_TX_CMQ_BASEADDR_H_REG ;
 int ROCEE_TX_CMQ_BASEADDR_L_REG ;
 int ROCEE_TX_CMQ_DEPTH_REG ;
 int ROCEE_TX_CMQ_HEAD_REG ;
 int ROCEE_TX_CMQ_TAIL_REG ;
 int TYPE_CSQ ;
 int roce_write (struct hns_roce_dev*,int ,int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void hns_roce_cmq_init_regs(struct hns_roce_dev *hr_dev, bool ring_type)
{
 struct hns_roce_v2_priv *priv = (struct hns_roce_v2_priv *)hr_dev->priv;
 struct hns_roce_v2_cmq_ring *ring = (ring_type == TYPE_CSQ) ?
         &priv->cmq.csq : &priv->cmq.crq;
 dma_addr_t dma = ring->desc_dma_addr;

 if (ring_type == TYPE_CSQ) {
  roce_write(hr_dev, ROCEE_TX_CMQ_BASEADDR_L_REG, (u32)dma);
  roce_write(hr_dev, ROCEE_TX_CMQ_BASEADDR_H_REG,
      upper_32_bits(dma));
  roce_write(hr_dev, ROCEE_TX_CMQ_DEPTH_REG,
      ring->desc_num >> HNS_ROCE_CMQ_DESC_NUM_S);
  roce_write(hr_dev, ROCEE_TX_CMQ_HEAD_REG, 0);
  roce_write(hr_dev, ROCEE_TX_CMQ_TAIL_REG, 0);
 } else {
  roce_write(hr_dev, ROCEE_RX_CMQ_BASEADDR_L_REG, (u32)dma);
  roce_write(hr_dev, ROCEE_RX_CMQ_BASEADDR_H_REG,
      upper_32_bits(dma));
  roce_write(hr_dev, ROCEE_RX_CMQ_DEPTH_REG,
      ring->desc_num >> HNS_ROCE_CMQ_DESC_NUM_S);
  roce_write(hr_dev, ROCEE_RX_CMQ_HEAD_REG, 0);
  roce_write(hr_dev, ROCEE_RX_CMQ_TAIL_REG, 0);
 }
}
