
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_mdma_device {int dummy; } ;
struct stm32_mdma_chan_config {int transfer_config; int request; int priority_level; } ;
struct TYPE_2__ {int src_addr_width; int dst_addr_width; int src_maxburst; int dst_maxburst; int src_addr; int dst_addr; } ;
struct stm32_mdma_chan {int mem_burst; int mem_width; int id; TYPE_1__ dma_config; struct stm32_mdma_chan_config chan_config; } ;
typedef int phys_addr_t ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
typedef int dma_addr_t ;




 int EINVAL ;
 int STM32_MDMA_CCR (int ) ;
 int STM32_MDMA_CCR_BEX ;
 int STM32_MDMA_CCR_HEX ;
 int STM32_MDMA_CCR_PL (int ) ;
 int STM32_MDMA_CCR_PL_MASK ;
 int STM32_MDMA_CCR_SWRQ ;
 int STM32_MDMA_CCR_WEX ;
 int STM32_MDMA_CDAR (int ) ;
 int STM32_MDMA_CSAR (int ) ;
 int STM32_MDMA_CTBR (int ) ;
 int STM32_MDMA_CTBR_DBUS ;
 int STM32_MDMA_CTBR_SBUS ;
 int STM32_MDMA_CTBR_TSEL (int ) ;
 int STM32_MDMA_CTBR_TSEL_MASK ;
 int STM32_MDMA_CTCR (int ) ;
 int STM32_MDMA_CTCR_CFG_MASK ;
 int STM32_MDMA_CTCR_DBURST (int ) ;
 int STM32_MDMA_CTCR_DBURST_MASK ;
 int STM32_MDMA_CTCR_DINCOS (int) ;
 int STM32_MDMA_CTCR_DINCOS_MASK ;
 int STM32_MDMA_CTCR_DSIZE (int) ;
 int STM32_MDMA_CTCR_DSIZE_MASK ;
 int STM32_MDMA_CTCR_LEN2_GET (int) ;
 int STM32_MDMA_CTCR_LEN2_MSK ;
 int STM32_MDMA_CTCR_PKE ;
 int STM32_MDMA_CTCR_SBURST (int ) ;
 int STM32_MDMA_CTCR_SBURST_MASK ;
 int STM32_MDMA_CTCR_SINCOS (int) ;
 int STM32_MDMA_CTCR_SINCOS_MASK ;
 int STM32_MDMA_CTCR_SSIZE (int) ;
 int STM32_MDMA_CTCR_SSIZE_MASK ;
 int STM32_MDMA_CTCR_SWRM ;
 int STM32_MDMA_CTCR_TLEN (int) ;
 int STM32_MDMA_MAX_BUF_LEN ;
 int STM32_MDMA_MAX_BURST ;
 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_err (int ,char*,...) ;
 int ilog2 (int) ;
 int is_power_of_2 (int) ;
 int stm32_mdma_get_best_burst (int,int,int,int) ;
 struct stm32_mdma_device* stm32_mdma_get_dev (struct stm32_mdma_chan*) ;
 int stm32_mdma_get_max_width (int ,int,int) ;
 int stm32_mdma_get_width (struct stm32_mdma_chan*,int) ;
 int stm32_mdma_read (struct stm32_mdma_device*,int ) ;
 int stm32_mdma_set_bus (struct stm32_mdma_device*,int*,int ,int ) ;
 int stm32_mdma_write (struct stm32_mdma_device*,int ,int ) ;

__attribute__((used)) static int stm32_mdma_set_xfer_param(struct stm32_mdma_chan *chan,
         enum dma_transfer_direction direction,
         u32 *mdma_ccr, u32 *mdma_ctcr,
         u32 *mdma_ctbr, dma_addr_t addr,
         u32 buf_len)
{
 struct stm32_mdma_device *dmadev = stm32_mdma_get_dev(chan);
 struct stm32_mdma_chan_config *chan_config = &chan->chan_config;
 enum dma_slave_buswidth src_addr_width, dst_addr_width;
 phys_addr_t src_addr, dst_addr;
 int src_bus_width, dst_bus_width;
 u32 src_maxburst, dst_maxburst, src_best_burst, dst_best_burst;
 u32 ccr, ctcr, ctbr, tlen;

 src_addr_width = chan->dma_config.src_addr_width;
 dst_addr_width = chan->dma_config.dst_addr_width;
 src_maxburst = chan->dma_config.src_maxburst;
 dst_maxburst = chan->dma_config.dst_maxburst;

 ccr = stm32_mdma_read(dmadev, STM32_MDMA_CCR(chan->id));
 ctcr = stm32_mdma_read(dmadev, STM32_MDMA_CTCR(chan->id));
 ctbr = stm32_mdma_read(dmadev, STM32_MDMA_CTBR(chan->id));


 ctcr &= ~STM32_MDMA_CTCR_SWRM;


 ctcr &= ~STM32_MDMA_CTCR_CFG_MASK;
 ctcr |= chan_config->transfer_config & STM32_MDMA_CTCR_CFG_MASK;





 tlen = STM32_MDMA_CTCR_LEN2_GET(ctcr);
 ctcr &= ~STM32_MDMA_CTCR_LEN2_MSK;
 ctcr |= STM32_MDMA_CTCR_TLEN((tlen - 1));


 ctcr &= ~STM32_MDMA_CTCR_PKE;


 if (src_maxburst * src_addr_width > STM32_MDMA_MAX_BURST ||
     dst_maxburst * dst_addr_width > STM32_MDMA_MAX_BURST) {
  dev_err(chan2dev(chan),
   "burst size * bus width higher than %d bytes\n",
   STM32_MDMA_MAX_BURST);
  return -EINVAL;
 }

 if ((!is_power_of_2(src_maxburst) && src_maxburst > 0) ||
     (!is_power_of_2(dst_maxburst) && dst_maxburst > 0)) {
  dev_err(chan2dev(chan), "burst size must be a power of 2\n");
  return -EINVAL;
 }







 ccr &= ~(STM32_MDMA_CCR_SWRQ | STM32_MDMA_CCR_WEX | STM32_MDMA_CCR_HEX |
   STM32_MDMA_CCR_BEX | STM32_MDMA_CCR_PL_MASK);
 ccr |= STM32_MDMA_CCR_PL(chan_config->priority_level);


 ctbr &= ~STM32_MDMA_CTBR_TSEL_MASK;
 ctbr |= STM32_MDMA_CTBR_TSEL(chan_config->request);

 switch (direction) {
 case 128:
  dst_addr = chan->dma_config.dst_addr;


  dst_bus_width = stm32_mdma_get_width(chan, dst_addr_width);
  if (dst_bus_width < 0)
   return dst_bus_width;
  ctcr &= ~STM32_MDMA_CTCR_DSIZE_MASK;
  ctcr |= STM32_MDMA_CTCR_DSIZE(dst_bus_width);


  dst_best_burst = stm32_mdma_get_best_burst(buf_len, tlen,
          dst_maxburst,
          dst_addr_width);
  chan->mem_burst = dst_best_burst;
  ctcr &= ~STM32_MDMA_CTCR_DBURST_MASK;
  ctcr |= STM32_MDMA_CTCR_DBURST((ilog2(dst_best_burst)));


  src_addr_width = stm32_mdma_get_max_width(addr, buf_len, tlen);
  chan->mem_width = src_addr_width;
  src_bus_width = stm32_mdma_get_width(chan, src_addr_width);
  if (src_bus_width < 0)
   return src_bus_width;
  ctcr &= ~STM32_MDMA_CTCR_SSIZE_MASK |
   STM32_MDMA_CTCR_SINCOS_MASK;
  ctcr |= STM32_MDMA_CTCR_SSIZE(src_bus_width) |
   STM32_MDMA_CTCR_SINCOS(src_bus_width);


  src_maxburst = STM32_MDMA_MAX_BUF_LEN / src_addr_width;
  src_best_burst = stm32_mdma_get_best_burst(buf_len, tlen,
          src_maxburst,
          src_addr_width);
  chan->mem_burst = src_best_burst;
  ctcr &= ~STM32_MDMA_CTCR_SBURST_MASK;
  ctcr |= STM32_MDMA_CTCR_SBURST((ilog2(src_best_burst)));


  stm32_mdma_set_bus(dmadev, &ctbr, STM32_MDMA_CTBR_DBUS,
       dst_addr);

  if (dst_bus_width != src_bus_width)
   ctcr |= STM32_MDMA_CTCR_PKE;


  stm32_mdma_write(dmadev, STM32_MDMA_CDAR(chan->id), dst_addr);
  break;

 case 129:
  src_addr = chan->dma_config.src_addr;


  src_bus_width = stm32_mdma_get_width(chan, src_addr_width);
  if (src_bus_width < 0)
   return src_bus_width;
  ctcr &= ~STM32_MDMA_CTCR_SSIZE_MASK;
  ctcr |= STM32_MDMA_CTCR_SSIZE(src_bus_width);


  src_best_burst = stm32_mdma_get_best_burst(buf_len, tlen,
          src_maxburst,
          src_addr_width);
  ctcr &= ~STM32_MDMA_CTCR_SBURST_MASK;
  ctcr |= STM32_MDMA_CTCR_SBURST((ilog2(src_best_burst)));


  dst_addr_width = stm32_mdma_get_max_width(addr, buf_len, tlen);
  chan->mem_width = dst_addr_width;
  dst_bus_width = stm32_mdma_get_width(chan, dst_addr_width);
  if (dst_bus_width < 0)
   return dst_bus_width;
  ctcr &= ~(STM32_MDMA_CTCR_DSIZE_MASK |
   STM32_MDMA_CTCR_DINCOS_MASK);
  ctcr |= STM32_MDMA_CTCR_DSIZE(dst_bus_width) |
   STM32_MDMA_CTCR_DINCOS(dst_bus_width);


  dst_maxburst = STM32_MDMA_MAX_BUF_LEN / dst_addr_width;
  dst_best_burst = stm32_mdma_get_best_burst(buf_len, tlen,
          dst_maxburst,
          dst_addr_width);
  ctcr &= ~STM32_MDMA_CTCR_DBURST_MASK;
  ctcr |= STM32_MDMA_CTCR_DBURST((ilog2(dst_best_burst)));


  stm32_mdma_set_bus(dmadev, &ctbr, STM32_MDMA_CTBR_SBUS,
       src_addr);

  if (dst_bus_width != src_bus_width)
   ctcr |= STM32_MDMA_CTCR_PKE;


  stm32_mdma_write(dmadev, STM32_MDMA_CSAR(chan->id), src_addr);
  break;

 default:
  dev_err(chan2dev(chan), "Dma direction is not supported\n");
  return -EINVAL;
 }

 *mdma_ccr = ccr;
 *mdma_ctcr = ctcr;
 *mdma_ctbr = ctbr;

 return 0;
}
