
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int bios_sect; int bios_head; int bios_cyl; int sect; int head; int cyl; } ;
typedef TYPE_1__ ide_drive_t ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

int ide_geometry_proc_show(struct seq_file *m, void *v)
{
 ide_drive_t *drive = (ide_drive_t *) m->private;

 seq_printf(m, "physical     %d/%d/%d\n",
   drive->cyl, drive->head, drive->sect);
 seq_printf(m, "logical      %d/%d/%d\n",
   drive->bios_cyl, drive->bios_head, drive->bios_sect);
 return 0;
}
