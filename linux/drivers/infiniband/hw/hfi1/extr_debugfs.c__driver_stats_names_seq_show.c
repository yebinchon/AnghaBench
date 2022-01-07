
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef size_t loff_t ;


 int * hfi1_statnames ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int _driver_stats_names_seq_show(struct seq_file *s, void *v)
{
 loff_t *spos = v;

 seq_printf(s, "%s\n", hfi1_statnames[*spos]);
 return 0;
}
