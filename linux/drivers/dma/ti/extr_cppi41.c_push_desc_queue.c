
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct cppi41_desc {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct cppi41_dd {int descs_phys; scalar_t__ qmgr_mem; struct cppi41_channel** chan_busy; TYPE_1__ ddev; } ;
struct cppi41_channel {size_t q_comp_num; int q_num; int desc_phys; scalar_t__ gcr_reg; int is_tx; scalar_t__ residue; struct cppi41_dd* cdd; } ;


 size_t GCR_CHAN_ENABLE ;
 size_t GCR_DESC_TYPE_HOST ;
 size_t GCR_STARV_RETRY ;
 scalar_t__ QMGR_QUEUE_D (int ) ;
 int WARN_ON (struct cppi41_channel*) ;
 int __iowmb () ;
 int cppi_writel (size_t,scalar_t__) ;
 size_t lower_32_bits (int ) ;
 int pm_runtime_get (int ) ;

__attribute__((used)) static void push_desc_queue(struct cppi41_channel *c)
{
 struct cppi41_dd *cdd = c->cdd;
 u32 desc_num;
 u32 desc_phys;
 u32 reg;

 c->residue = 0;

 reg = GCR_CHAN_ENABLE;
 if (!c->is_tx) {
  reg |= GCR_STARV_RETRY;
  reg |= GCR_DESC_TYPE_HOST;
  reg |= c->q_comp_num;
 }

 cppi_writel(reg, c->gcr_reg);






 __iowmb();
 pm_runtime_get(cdd->ddev.dev);

 desc_phys = lower_32_bits(c->desc_phys);
 desc_num = (desc_phys - cdd->descs_phys) / sizeof(struct cppi41_desc);
 WARN_ON(cdd->chan_busy[desc_num]);
 cdd->chan_busy[desc_num] = c;

 reg = (sizeof(struct cppi41_desc) - 24) / 4;
 reg |= desc_phys;
 cppi_writel(reg, cdd->qmgr_mem + QMGR_QUEUE_D(c->q_num));
}
