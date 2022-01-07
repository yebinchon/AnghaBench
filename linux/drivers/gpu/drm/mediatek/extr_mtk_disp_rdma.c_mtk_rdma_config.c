
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_rdma {int dummy; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;


 scalar_t__ DISP_REG_RDMA_FIFO_CON ;
 int DISP_REG_RDMA_SIZE_CON_0 ;
 int DISP_REG_RDMA_SIZE_CON_1 ;
 unsigned int RDMA_FIFO_PSEUDO_SIZE (int ) ;
 int RDMA_FIFO_SIZE (struct mtk_disp_rdma*) ;
 unsigned int RDMA_FIFO_UNDERFLOW_EN ;
 unsigned int RDMA_OUTPUT_VALID_FIFO_THRESHOLD (unsigned int) ;
 struct mtk_disp_rdma* comp_to_rdma (struct mtk_ddp_comp*) ;
 int rdma_update_bits (struct mtk_ddp_comp*,int ,int,unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
       unsigned int height, unsigned int vrefresh,
       unsigned int bpc)
{
 unsigned int threshold;
 unsigned int reg;
 struct mtk_disp_rdma *rdma = comp_to_rdma(comp);

 rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
 rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);







 threshold = width * height * vrefresh * 4 * 7 / 1000000;
 reg = RDMA_FIFO_UNDERFLOW_EN |
       RDMA_FIFO_PSEUDO_SIZE(RDMA_FIFO_SIZE(rdma)) |
       RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
 writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
}
