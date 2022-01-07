
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xgene_edac_mc_ctx {TYPE_1__* mci; } ;
struct TYPE_3__ {int dev; } ;


 int edac_mc_del_mc (int *) ;
 int edac_mc_free (TYPE_1__*) ;
 int xgene_edac_mc_irq_ctl (TYPE_1__*,int) ;

__attribute__((used)) static int xgene_edac_mc_remove(struct xgene_edac_mc_ctx *mcu)
{
 xgene_edac_mc_irq_ctl(mcu->mci, 0);
 edac_mc_del_mc(&mcu->mci->dev);
 edac_mc_free(mcu->mci);
 return 0;
}
