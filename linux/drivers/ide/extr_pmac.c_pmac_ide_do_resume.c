
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int irq; scalar_t__ kauai_fcr; int aapl_bus_id; int node; } ;
typedef TYPE_1__ pmac_ide_hwif_t ;
struct TYPE_7__ {int (* feature_call ) (int ,int ,int ,int) ;} ;


 int IDE_WAKEUP_DELAY ;
 int KAUAI_FCR_UATA_ENABLE ;
 int KAUAI_FCR_UATA_RESET_N ;
 int PMAC_FTR_IDE_ENABLE ;
 int PMAC_FTR_IDE_RESET ;
 int enable_irq (int ) ;
 int jiffies_to_msecs (int ) ;
 int msleep (int) ;
 int on_media_bay (TYPE_1__*) ;
 TYPE_3__ ppc_md ;
 int readl (scalar_t__) ;
 int sanitize_timings (TYPE_1__*) ;
 int stub1 (int ,int ,int ,int) ;
 int stub2 (int ,int ,int ,int) ;
 int stub3 (int ,int ,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pmac_ide_do_resume(pmac_ide_hwif_t *pmif)
{

 if (!on_media_bay(pmif)) {
  ppc_md.feature_call(PMAC_FTR_IDE_RESET, pmif->node, pmif->aapl_bus_id, 1);
  ppc_md.feature_call(PMAC_FTR_IDE_ENABLE, pmif->node, pmif->aapl_bus_id, 1);
  msleep(10);
  ppc_md.feature_call(PMAC_FTR_IDE_RESET, pmif->node, pmif->aapl_bus_id, 0);


  if (pmif->kauai_fcr) {
   u32 fcr = readl(pmif->kauai_fcr);
   fcr |= KAUAI_FCR_UATA_RESET_N | KAUAI_FCR_UATA_ENABLE;
   writel(fcr, pmif->kauai_fcr);
  }

  msleep(jiffies_to_msecs(IDE_WAKEUP_DELAY));
 }


 sanitize_timings(pmif);

 enable_irq(pmif->irq);

 return 0;
}
