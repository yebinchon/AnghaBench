
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cppi41_desc {int dummy; } ;
struct cppi41_dd {int descs_phys; int cd; scalar_t__ qmgr_mem; } ;


 int ALLOC_DECS_NUM ;
 int DESCS_AREAS ;
 scalar_t__ QMGR_MEMBASE (int) ;
 scalar_t__ QMGR_MEMCTRL (int) ;
 int cppi_writel (int ,scalar_t__) ;
 int dma_free_coherent (struct device*,unsigned int,int ,int ) ;

__attribute__((used)) static void purge_descs(struct device *dev, struct cppi41_dd *cdd)
{
 unsigned int mem_decs;
 int i;

 mem_decs = ALLOC_DECS_NUM * sizeof(struct cppi41_desc);

 for (i = 0; i < DESCS_AREAS; i++) {

  cppi_writel(0, cdd->qmgr_mem + QMGR_MEMBASE(i));
  cppi_writel(0, cdd->qmgr_mem + QMGR_MEMCTRL(i));

  dma_free_coherent(dev, mem_decs, cdd->cd,
    cdd->descs_phys);
 }
}
