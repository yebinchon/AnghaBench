
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {void* big_endian; } ;
struct TYPE_3__ {void* big_endian; } ;
struct stedma40_chan_cfg {int use_fixed_channel; int high_priority; int phy_channel; TYPE_2__ src_info; int dir; TYPE_1__ dst_info; int mode; int dev_type; } ;
struct of_phandle_args {int * args; } ;
struct of_dma {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 void* D40_DT_FLAGS_BIG_ENDIAN (int ) ;
 int D40_DT_FLAGS_DIR (int ) ;
 scalar_t__ D40_DT_FLAGS_FIXED_CHAN (int ) ;
 scalar_t__ D40_DT_FLAGS_HIGH_PRIO (int ) ;
 int D40_DT_FLAGS_MODE (int ) ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 int STEDMA40_MODE_LOGICAL ;
 int STEDMA40_MODE_PHYSICAL ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,struct stedma40_chan_cfg*) ;
 int memset (struct stedma40_chan_cfg*,int ,int) ;
 int stedma40_filter ;

__attribute__((used)) static struct dma_chan *d40_xlate(struct of_phandle_args *dma_spec,
      struct of_dma *ofdma)
{
 struct stedma40_chan_cfg cfg;
 dma_cap_mask_t cap;
 u32 flags;

 memset(&cfg, 0, sizeof(struct stedma40_chan_cfg));

 dma_cap_zero(cap);
 dma_cap_set(DMA_SLAVE, cap);

 cfg.dev_type = dma_spec->args[0];
 flags = dma_spec->args[2];

 switch (D40_DT_FLAGS_MODE(flags)) {
 case 0: cfg.mode = STEDMA40_MODE_LOGICAL; break;
 case 1: cfg.mode = STEDMA40_MODE_PHYSICAL; break;
 }

 switch (D40_DT_FLAGS_DIR(flags)) {
 case 0:
  cfg.dir = DMA_MEM_TO_DEV;
  cfg.dst_info.big_endian = D40_DT_FLAGS_BIG_ENDIAN(flags);
  break;
 case 1:
  cfg.dir = DMA_DEV_TO_MEM;
  cfg.src_info.big_endian = D40_DT_FLAGS_BIG_ENDIAN(flags);
  break;
 }

 if (D40_DT_FLAGS_FIXED_CHAN(flags)) {
  cfg.phy_channel = dma_spec->args[1];
  cfg.use_fixed_channel = 1;
 }

 if (D40_DT_FLAGS_HIGH_PRIO(flags))
  cfg.high_priority = 1;

 return dma_request_channel(cap, stedma40_filter, &cfg);
}
