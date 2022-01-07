
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int DBGFS_PRINT_STR (char*,char*) ;
 int HDMI_STA_DLL_LCK ;
 int HDMI_STA_HOT_PLUG ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void hdmi_dbg_sta(struct seq_file *s, int val)
{
 int tmp;

 seq_putc(s, '\t');
 tmp = (val & HDMI_STA_DLL_LCK);
 DBGFS_PRINT_STR("pll:", tmp ? "locked" : "not locked");
 seq_puts(s, "\t\t\t\t\t");
 tmp = (val & HDMI_STA_HOT_PLUG);
 DBGFS_PRINT_STR("hdmi cable:", tmp ? "connected" : "not connected");
}
