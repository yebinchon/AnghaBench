
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_rdma {int * crtc; } ;
struct mtk_ddp_comp {int dummy; } ;


 int DISP_REG_RDMA_INT_ENABLE ;
 int RDMA_FRAME_END_INT ;
 struct mtk_disp_rdma* comp_to_rdma (struct mtk_ddp_comp*) ;
 int rdma_update_bits (struct mtk_ddp_comp*,int ,int ,int ) ;

__attribute__((used)) static void mtk_rdma_disable_vblank(struct mtk_ddp_comp *comp)
{
 struct mtk_disp_rdma *rdma = comp_to_rdma(comp);

 rdma->crtc = ((void*)0);
 rdma_update_bits(comp, DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT, 0);
}
