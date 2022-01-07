
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;


 int DMA_CHAN_CFG_DST_MODE_A31 (int ) ;
 int DMA_CHAN_CFG_SRC_MODE_A31 (int ) ;

__attribute__((used)) static void sun6i_set_mode_a31(u32 *p_cfg, s8 src_mode, s8 dst_mode)
{
 *p_cfg |= DMA_CHAN_CFG_SRC_MODE_A31(src_mode) |
    DMA_CHAN_CFG_DST_MODE_A31(dst_mode);
}
