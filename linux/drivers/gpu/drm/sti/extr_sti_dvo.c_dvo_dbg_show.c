
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_dvo {scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int DBGFS_DUMP (int ) ;
 int DVO_AWG_DIGSYNC_CTRL ;
 scalar_t__ DVO_DIGSYNC_INSTR_I ;
 int DVO_DOF_CFG ;
 int DVO_LUT_PROG_HIGH ;
 int DVO_LUT_PROG_LOW ;
 int DVO_LUT_PROG_MID ;
 int dvo_dbg_awg_microcode (struct seq_file*,scalar_t__) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int dvo_dbg_show(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct sti_dvo *dvo = (struct sti_dvo *)node->info_ent->data;

 seq_printf(s, "DVO: (vaddr = 0x%p)", dvo->regs);
 DBGFS_DUMP(DVO_AWG_DIGSYNC_CTRL);
 DBGFS_DUMP(DVO_DOF_CFG);
 DBGFS_DUMP(DVO_LUT_PROG_LOW);
 DBGFS_DUMP(DVO_LUT_PROG_MID);
 DBGFS_DUMP(DVO_LUT_PROG_HIGH);
 dvo_dbg_awg_microcode(s, dvo->regs + DVO_DIGSYNC_INSTR_I);
 seq_putc(s, '\n');
 return 0;
}
