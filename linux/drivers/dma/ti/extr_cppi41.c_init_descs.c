
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cppi41_desc {int dummy; } ;
struct cppi41_dd {int descs_phys; scalar_t__ qmgr_mem; int cd; } ;


 int ALLOC_DECS_NUM ;
 int BUILD_BUG_ON (int) ;
 int DESCS_AREAS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ QMGR_MEMBASE (int) ;
 scalar_t__ QMGR_MEMCTRL (int) ;
 int QMGR_MEMCTRL_DESC_SH ;
 int QMGR_MEMCTRL_IDX_SH ;
 int cppi_writel (int,scalar_t__) ;
 int dma_alloc_coherent (struct device*,unsigned int,int*,int ) ;
 int ilog2 (int) ;

__attribute__((used)) static int init_descs(struct device *dev, struct cppi41_dd *cdd)
{
 unsigned int desc_size;
 unsigned int mem_decs;
 int i;
 u32 reg;
 u32 idx;

 BUILD_BUG_ON(sizeof(struct cppi41_desc) &
   (sizeof(struct cppi41_desc) - 1));
 BUILD_BUG_ON(sizeof(struct cppi41_desc) < 32);
 BUILD_BUG_ON(ALLOC_DECS_NUM < 32);

 desc_size = sizeof(struct cppi41_desc);
 mem_decs = ALLOC_DECS_NUM * desc_size;

 idx = 0;
 for (i = 0; i < DESCS_AREAS; i++) {

  reg = idx << QMGR_MEMCTRL_IDX_SH;
  reg |= (ilog2(desc_size) - 5) << QMGR_MEMCTRL_DESC_SH;
  reg |= ilog2(ALLOC_DECS_NUM) - 5;

  BUILD_BUG_ON(DESCS_AREAS != 1);
  cdd->cd = dma_alloc_coherent(dev, mem_decs,
    &cdd->descs_phys, GFP_KERNEL);
  if (!cdd->cd)
   return -ENOMEM;

  cppi_writel(cdd->descs_phys, cdd->qmgr_mem + QMGR_MEMBASE(i));
  cppi_writel(reg, cdd->qmgr_mem + QMGR_MEMCTRL(i));

  idx += ALLOC_DECS_NUM;
 }
 return 0;
}
