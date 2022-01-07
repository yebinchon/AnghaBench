
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pdc_state {size_t txout; int ntxpost; int pdc_idx; struct dma64dd* txd_64; TYPE_1__* pdev; } ;
struct dma64dd {void* ctrl2; void* ctrl1; void* addrhigh; void* addrlow; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 size_t NEXTTXD (size_t,int ) ;
 void* cpu_to_le32 (int ) ;
 int dev_dbg (struct device*,char*,int ,size_t,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void
pdc_build_txd(struct pdc_state *pdcs, dma_addr_t dma_addr, u32 buf_len,
       u32 flags)
{
 struct device *dev = &pdcs->pdev->dev;
 struct dma64dd *txd = &pdcs->txd_64[pdcs->txout];

 dev_dbg(dev,
  "Writing tx descriptor for PDC %u at index %u with length %u, flags %#x\n",
  pdcs->pdc_idx, pdcs->txout, buf_len, flags);

 txd->addrlow = cpu_to_le32(lower_32_bits(dma_addr));
 txd->addrhigh = cpu_to_le32(upper_32_bits(dma_addr));
 txd->ctrl1 = cpu_to_le32(flags);
 txd->ctrl2 = cpu_to_le32(buf_len);


 pdcs->txout = NEXTTXD(pdcs->txout, pdcs->ntxpost);
}
