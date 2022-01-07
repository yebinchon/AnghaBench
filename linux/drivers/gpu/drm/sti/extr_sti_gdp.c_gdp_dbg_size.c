
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int) ;

__attribute__((used)) static void gdp_dbg_size(struct seq_file *s, int val)
{
 seq_printf(s, "\t%d x %d", val & 0xFFFF, (val >> 16) & 0xFFFF);
}
