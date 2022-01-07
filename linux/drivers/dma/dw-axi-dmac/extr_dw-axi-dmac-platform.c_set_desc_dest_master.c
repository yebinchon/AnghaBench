
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int ctl_lo; } ;
struct axi_dma_desc {TYPE_5__ lli; TYPE_4__* chan; } ;
struct TYPE_9__ {TYPE_3__* chip; } ;
struct TYPE_8__ {TYPE_2__* dw; } ;
struct TYPE_7__ {TYPE_1__* hdata; } ;
struct TYPE_6__ {int nr_masters; } ;


 int CH_CTL_L_DST_MAST ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void set_desc_dest_master(struct axi_dma_desc *desc)
{
 u32 val;


 val = le32_to_cpu(desc->lli.ctl_lo);
 if (desc->chan->chip->dw->hdata->nr_masters > 1)
  val |= CH_CTL_L_DST_MAST;
 else
  val &= ~CH_CTL_L_DST_MAST;

 desc->lli.ctl_lo = cpu_to_le32(val);
}
