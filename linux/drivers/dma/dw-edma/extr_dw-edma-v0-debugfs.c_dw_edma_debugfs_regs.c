
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct debugfs_entries {int dummy; } ;


 int ARRAY_SIZE (struct debugfs_entries const*) ;
 struct debugfs_entries const REGISTER (int ) ;
 int REGISTERS_STR ;
 int base_dir ;
 int ctrl ;
 int ctrl_data_arb_prior ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int dw_edma_debugfs_create_x32 (struct debugfs_entries const*,int,struct dentry*) ;
 int dw_edma_debugfs_regs_rd (struct dentry*) ;
 int dw_edma_debugfs_regs_wr (struct dentry*) ;

__attribute__((used)) static void dw_edma_debugfs_regs(void)
{
 const struct debugfs_entries debugfs_regs[] = {
  REGISTER(ctrl_data_arb_prior),
  REGISTER(ctrl),
 };
 struct dentry *regs_dir;
 int nr_entries;

 regs_dir = debugfs_create_dir(REGISTERS_STR, base_dir);
 if (!regs_dir)
  return;

 nr_entries = ARRAY_SIZE(debugfs_regs);
 dw_edma_debugfs_create_x32(debugfs_regs, nr_entries, regs_dir);

 dw_edma_debugfs_regs_wr(regs_dir);
 dw_edma_debugfs_regs_rd(regs_dir);
}
