
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dw_edma_chip {TYPE_2__* dw; } ;
struct TYPE_3__ {int vaddr; } ;
struct TYPE_4__ {int rd_ch_cnt; int wr_ch_cnt; int mode; int version; int name; TYPE_1__ rg_region; } ;


 int base_dir ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_u16 (char*,int,int ,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 TYPE_2__* dw ;
 int dw_edma_debugfs_regs () ;
 int regs ;

void dw_edma_v0_debugfs_on(struct dw_edma_chip *chip)
{
 dw = chip->dw;
 if (!dw)
  return;

 regs = dw->rg_region.vaddr;
 if (!regs)
  return;

 base_dir = debugfs_create_dir(dw->name, 0);
 if (!base_dir)
  return;

 debugfs_create_u32("version", 0444, base_dir, &dw->version);
 debugfs_create_u32("mode", 0444, base_dir, &dw->mode);
 debugfs_create_u16("wr_ch_cnt", 0444, base_dir, &dw->wr_ch_cnt);
 debugfs_create_u16("rd_ch_cnt", 0444, base_dir, &dw->rd_ch_cnt);

 dw_edma_debugfs_regs();
}
