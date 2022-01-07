
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sa11x0_dma_phy {int num; TYPE_3__* dev; scalar_t__ sg_load; struct sa11x0_dma_desc* txd_load; } ;
struct TYPE_5__ {int cookie; } ;
struct TYPE_8__ {TYPE_1__ tx; int node; } ;
struct sa11x0_dma_desc {int ddar; TYPE_4__ vd; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {TYPE_2__ slave; } ;


 int dev_vdbg (int ,char*,int ,TYPE_4__*,int ,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void sa11x0_dma_start_desc(struct sa11x0_dma_phy *p, struct sa11x0_dma_desc *txd)
{
 list_del(&txd->vd.node);
 p->txd_load = txd;
 p->sg_load = 0;

 dev_vdbg(p->dev->slave.dev, "pchan %u: txd %p[%x]: starting: DDAR:%x\n",
  p->num, &txd->vd, txd->vd.tx.cookie, txd->ddar);
}
