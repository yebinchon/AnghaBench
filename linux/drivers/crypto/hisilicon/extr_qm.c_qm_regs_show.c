
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct hisi_qm* private; } ;
struct qm_dfx_registers {scalar_t__ reg_name; scalar_t__ reg_offset; } ;
struct hisi_qm {scalar_t__ fun_type; scalar_t__ io_base; } ;


 scalar_t__ QM_HW_PF ;
 struct qm_dfx_registers* qm_dfx_regs ;
 struct qm_dfx_registers* qm_vf_dfx_regs ;
 int readl (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,scalar_t__,int ) ;

__attribute__((used)) static int qm_regs_show(struct seq_file *s, void *unused)
{
 struct hisi_qm *qm = s->private;
 struct qm_dfx_registers *regs;
 u32 val;

 if (qm->fun_type == QM_HW_PF)
  regs = qm_dfx_regs;
 else
  regs = qm_vf_dfx_regs;

 while (regs->reg_name) {
  val = readl(qm->io_base + regs->reg_offset);
  seq_printf(s, "%s= 0x%08x\n", regs->reg_name, val);
  regs++;
 }

 return 0;
}
