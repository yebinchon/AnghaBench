
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {int dummy; } ;


 int DISP_REG_RDMA_GLOBAL_CON ;
 int RDMA_ENGINE_EN ;
 int rdma_update_bits (struct mtk_ddp_comp*,int ,int ,int ) ;

__attribute__((used)) static void mtk_rdma_stop(struct mtk_ddp_comp *comp)
{
 rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN, 0);
}
