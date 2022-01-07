
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void vid_dbg_mst(struct seq_file *s, int val)
{
 if (val & 1)
  seq_puts(s, "\tBUFFER UNDERFLOW!");
}
