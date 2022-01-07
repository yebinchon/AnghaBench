
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctl_lo; int ctl_hi; int block_ts_lo; int llp; int dar; int sar; } ;
struct axi_dma_desc {TYPE_2__ lli; } ;
struct TYPE_3__ {int chan; } ;
struct axi_dma_chan {TYPE_1__ vc; } ;


 int dchan2dev (int *) ;
 int dev_err (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void axi_chan_dump_lli(struct axi_dma_chan *chan,
         struct axi_dma_desc *desc)
{
 dev_err(dchan2dev(&chan->vc.chan),
  "SAR: 0x%llx DAR: 0x%llx LLP: 0x%llx BTS 0x%x CTL: 0x%x:%08x",
  le64_to_cpu(desc->lli.sar),
  le64_to_cpu(desc->lli.dar),
  le64_to_cpu(desc->lli.llp),
  le32_to_cpu(desc->lli.block_ts_lo),
  le32_to_cpu(desc->lli.ctl_hi),
  le32_to_cpu(desc->lli.ctl_lo));
}
