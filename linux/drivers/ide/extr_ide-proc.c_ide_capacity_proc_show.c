
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,long long) ;

int ide_capacity_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%llu\n", (long long)0x7fffffff);
 return 0;
}
