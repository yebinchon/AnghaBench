
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int) ;

__attribute__((used)) static void cursor_dbg_vpo(struct seq_file *s, u32 val)
{
 seq_printf(s, "\txdo:%4d\tydo:%4d", val & 0x0FFF, (val >> 16) & 0x0FFF);
}
