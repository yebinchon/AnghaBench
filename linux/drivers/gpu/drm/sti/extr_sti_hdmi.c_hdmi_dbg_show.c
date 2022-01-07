
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_hdmi {int regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int DBGFS_DUMP (char*,int ) ;
 int DBGFS_DUMP_DI (int ,int ) ;
 int DBGFS_PRINT_INT (char*,int ) ;
 int HDMI_ACTIVE_VID_XMAX ;
 int HDMI_ACTIVE_VID_XMIN ;
 int HDMI_ACTIVE_VID_YMAX ;
 int HDMI_ACTIVE_VID_YMIN ;
 int HDMI_AUDIO_CFG ;
 int HDMI_AUDN ;
 int HDMI_CFG ;
 int HDMI_IFRAME_SLOT_AUDIO ;
 int HDMI_IFRAME_SLOT_AVI ;
 int HDMI_IFRAME_SLOT_VENDOR ;
 int HDMI_INT_EN ;
 int HDMI_SPDIF_FIFO_STATUS ;
 int HDMI_STA ;
 int HDMI_SW_DI_CFG ;
 int HDMI_SW_DI_N_HEAD_WORD ;
 int HDMI_SW_DI_N_PKT_WORD0 ;
 int HDMI_SW_DI_N_PKT_WORD1 ;
 int HDMI_SW_DI_N_PKT_WORD2 ;
 int HDMI_SW_DI_N_PKT_WORD3 ;
 int HDMI_SW_DI_N_PKT_WORD4 ;
 int HDMI_SW_DI_N_PKT_WORD5 ;
 int HDMI_SW_DI_N_PKT_WORD6 ;
 int hdmi_dbg_cfg (struct seq_file*,int ) ;
 int hdmi_dbg_sta (struct seq_file*,int ) ;
 int hdmi_dbg_sw_di_cfg (struct seq_file*,int ) ;
 int hdmi_read (struct sti_hdmi*,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int hdmi_dbg_show(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct sti_hdmi *hdmi = (struct sti_hdmi *)node->info_ent->data;

 seq_printf(s, "HDMI: (vaddr = 0x%p)", hdmi->regs);
 DBGFS_DUMP("\n", HDMI_CFG);
 hdmi_dbg_cfg(s, hdmi_read(hdmi, HDMI_CFG));
 DBGFS_DUMP("", HDMI_INT_EN);
 DBGFS_DUMP("\n", HDMI_STA);
 hdmi_dbg_sta(s, hdmi_read(hdmi, HDMI_STA));
 DBGFS_DUMP("", HDMI_ACTIVE_VID_XMIN);
 seq_putc(s, '\t');
 DBGFS_PRINT_INT("Xmin:", hdmi_read(hdmi, HDMI_ACTIVE_VID_XMIN));
 DBGFS_DUMP("", HDMI_ACTIVE_VID_XMAX);
 seq_putc(s, '\t');
 DBGFS_PRINT_INT("Xmax:", hdmi_read(hdmi, HDMI_ACTIVE_VID_XMAX));
 DBGFS_DUMP("", HDMI_ACTIVE_VID_YMIN);
 seq_putc(s, '\t');
 DBGFS_PRINT_INT("Ymin:", hdmi_read(hdmi, HDMI_ACTIVE_VID_YMIN));
 DBGFS_DUMP("", HDMI_ACTIVE_VID_YMAX);
 seq_putc(s, '\t');
 DBGFS_PRINT_INT("Ymax:", hdmi_read(hdmi, HDMI_ACTIVE_VID_YMAX));
 DBGFS_DUMP("", HDMI_SW_DI_CFG);
 hdmi_dbg_sw_di_cfg(s, hdmi_read(hdmi, HDMI_SW_DI_CFG));

 DBGFS_DUMP("\n", HDMI_AUDIO_CFG);
 DBGFS_DUMP("\n", HDMI_SPDIF_FIFO_STATUS);
 DBGFS_DUMP("\n", HDMI_AUDN);

 seq_printf(s, "\n AVI Infoframe (Data Island slot N=%d):",
     HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_HEAD_WORD, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD0, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD1, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD2, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD3, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD4, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD5, HDMI_IFRAME_SLOT_AVI);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD6, HDMI_IFRAME_SLOT_AVI);
 seq_printf(s, "\n\n AUDIO Infoframe (Data Island slot N=%d):",
     HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_HEAD_WORD, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD0, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD1, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD2, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD3, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD4, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD5, HDMI_IFRAME_SLOT_AUDIO);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD6, HDMI_IFRAME_SLOT_AUDIO);
 seq_printf(s, "\n\n VENDOR SPECIFIC Infoframe (Data Island slot N=%d):",
     HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_HEAD_WORD, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD0, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD1, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD2, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD3, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD4, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD5, HDMI_IFRAME_SLOT_VENDOR);
 DBGFS_DUMP_DI(HDMI_SW_DI_N_PKT_WORD6, HDMI_IFRAME_SLOT_VENDOR);
 seq_putc(s, '\n');
 return 0;
}
