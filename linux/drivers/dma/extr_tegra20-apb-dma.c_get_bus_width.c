
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {int dummy; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;






 int TEGRA_APBDMA_APBSEQ_BUS_WIDTH_16 ;
 int TEGRA_APBDMA_APBSEQ_BUS_WIDTH_32 ;
 int TEGRA_APBDMA_APBSEQ_BUS_WIDTH_64 ;
 int TEGRA_APBDMA_APBSEQ_BUS_WIDTH_8 ;
 int dev_warn (int ,char*) ;
 int tdc2dev (struct tegra_dma_channel*) ;

__attribute__((used)) static inline int get_bus_width(struct tegra_dma_channel *tdc,
  enum dma_slave_buswidth slave_bw)
{
 switch (slave_bw) {
 case 131:
  return TEGRA_APBDMA_APBSEQ_BUS_WIDTH_8;
 case 130:
  return TEGRA_APBDMA_APBSEQ_BUS_WIDTH_16;
 case 129:
  return TEGRA_APBDMA_APBSEQ_BUS_WIDTH_32;
 case 128:
  return TEGRA_APBDMA_APBSEQ_BUS_WIDTH_64;
 default:
  dev_warn(tdc2dev(tdc),
   "slave bw is not supported, using 32bits\n");
  return TEGRA_APBDMA_APBSEQ_BUS_WIDTH_32;
 }
}
