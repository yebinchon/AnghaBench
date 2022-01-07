
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
typedef int ide_drive_t ;


 scalar_t__ ide_gd_capacity (int *) ;
 int seq_printf (struct seq_file*,char*,long long) ;

__attribute__((used)) static int idedisk_capacity_proc_show(struct seq_file *m, void *v)
{
 ide_drive_t*drive = (ide_drive_t *)m->private;

 seq_printf(m, "%llu\n", (long long)ide_gd_capacity(drive));
 return 0;
}
