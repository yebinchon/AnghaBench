
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 scalar_t__ readl (void*) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static void mixer_dbg_mxn(struct seq_file *s, void *addr)
{
 int i;

 for (i = 1; i < 8; i++)
  seq_printf(s, "-0x%08X", (int)readl(addr + i * 4));
}
