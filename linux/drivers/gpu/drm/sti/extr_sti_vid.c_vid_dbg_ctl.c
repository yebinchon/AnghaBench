
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void vid_dbg_ctl(struct seq_file *s, int val)
{
 val = val >> 30;
 seq_putc(s, '\t');

 if (!(val & 1))
  seq_puts(s, "NOT ");
 seq_puts(s, "ignored on main mixer - ");

 if (!(val & 2))
  seq_puts(s, "NOT ");
 seq_puts(s, "ignored on aux mixer");
}
