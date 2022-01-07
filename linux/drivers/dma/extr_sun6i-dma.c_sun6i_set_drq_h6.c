
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;


 int DMA_CHAN_CFG_DST_DRQ_H6 (int ) ;
 int DMA_CHAN_CFG_SRC_DRQ_H6 (int ) ;

__attribute__((used)) static void sun6i_set_drq_h6(u32 *p_cfg, s8 src_drq, s8 dst_drq)
{
 *p_cfg |= DMA_CHAN_CFG_SRC_DRQ_H6(src_drq) |
    DMA_CHAN_CFG_DST_DRQ_H6(dst_drq);
}
