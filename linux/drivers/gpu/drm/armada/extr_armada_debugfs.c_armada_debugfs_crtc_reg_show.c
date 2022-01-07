
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct armada_crtc* private; } ;
struct armada_crtc {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,int,int ) ;

__attribute__((used)) static int armada_debugfs_crtc_reg_show(struct seq_file *m, void *data)
{
 struct armada_crtc *dcrtc = m->private;
 int i;

 for (i = 0x84; i <= 0x1c4; i += 4) {
  u32 v = readl_relaxed(dcrtc->base + i);
  seq_printf(m, "0x%04x: 0x%08x\n", i, v);
 }

 return 0;
}
