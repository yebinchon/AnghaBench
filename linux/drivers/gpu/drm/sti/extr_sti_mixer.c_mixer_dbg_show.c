
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_mixer {scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int DBGFS_DUMP (scalar_t__) ;
 scalar_t__ GAM_MIXER_ACT ;
 scalar_t__ GAM_MIXER_AVO ;
 scalar_t__ GAM_MIXER_AVS ;
 scalar_t__ GAM_MIXER_BCO ;
 scalar_t__ GAM_MIXER_BCS ;
 scalar_t__ GAM_MIXER_BKC ;
 scalar_t__ GAM_MIXER_CRB ;
 scalar_t__ GAM_MIXER_CTL ;
 scalar_t__ GAM_MIXER_MBP ;
 scalar_t__ GAM_MIXER_MX0 ;
 int mixer_dbg_crb (struct seq_file*,int ) ;
 int mixer_dbg_ctl (struct seq_file*,int ) ;
 int mixer_dbg_mxn (struct seq_file*,scalar_t__) ;
 int seq_printf (struct seq_file*,char*,int ,scalar_t__) ;
 int seq_putc (struct seq_file*,char) ;
 int sti_mixer_reg_read (struct sti_mixer*,scalar_t__) ;
 int sti_mixer_to_str (struct sti_mixer*) ;

__attribute__((used)) static int mixer_dbg_show(struct seq_file *s, void *arg)
{
 struct drm_info_node *node = s->private;
 struct sti_mixer *mixer = (struct sti_mixer *)node->info_ent->data;

 seq_printf(s, "%s: (vaddr = 0x%p)",
     sti_mixer_to_str(mixer), mixer->regs);

 DBGFS_DUMP(GAM_MIXER_CTL);
 mixer_dbg_ctl(s, sti_mixer_reg_read(mixer, GAM_MIXER_CTL));
 DBGFS_DUMP(GAM_MIXER_BKC);
 DBGFS_DUMP(GAM_MIXER_BCO);
 DBGFS_DUMP(GAM_MIXER_BCS);
 DBGFS_DUMP(GAM_MIXER_AVO);
 DBGFS_DUMP(GAM_MIXER_AVS);
 DBGFS_DUMP(GAM_MIXER_CRB);
 mixer_dbg_crb(s, sti_mixer_reg_read(mixer, GAM_MIXER_CRB));
 DBGFS_DUMP(GAM_MIXER_ACT);
 DBGFS_DUMP(GAM_MIXER_MBP);
 DBGFS_DUMP(GAM_MIXER_MX0);
 mixer_dbg_mxn(s, mixer->regs + GAM_MIXER_MX0);
 seq_putc(s, '\n');
 return 0;
}
