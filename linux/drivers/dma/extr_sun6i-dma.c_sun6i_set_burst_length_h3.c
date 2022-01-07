
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;


 int DMA_CHAN_CFG_DST_BURST_H3 (int ) ;
 int DMA_CHAN_CFG_SRC_BURST_H3 (int ) ;

__attribute__((used)) static void sun6i_set_burst_length_h3(u32 *p_cfg, s8 src_burst, s8 dst_burst)
{
 *p_cfg |= DMA_CHAN_CFG_SRC_BURST_H3(src_burst) |
    DMA_CHAN_CFG_DST_BURST_H3(dst_burst);
}
