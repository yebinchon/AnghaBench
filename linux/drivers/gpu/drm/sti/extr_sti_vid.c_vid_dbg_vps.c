
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int) ;

__attribute__((used)) static void vid_dbg_vps(struct seq_file *s, int val)
{
 seq_printf(s, "\txds:%4d\tyds:%4d", val & 0x0FFF, (val >> 16) & 0x0FFF);
}
