
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; int * proc; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int * proc; } ;


 int generic_drive_entries ;
 int ide_remove_proc_entries (int *,int ) ;
 int * proc_ide_root ;
 int remove_proc_entry (char*,int *) ;

void ide_proc_unregister_device(ide_drive_t *drive)
{
 if (drive->proc) {
  remove_proc_entry("settings", drive->proc);
  ide_remove_proc_entries(drive->proc, generic_drive_entries);
  remove_proc_entry(drive->name, proc_ide_root);
  remove_proc_entry(drive->name, drive->hwif->proc);
  drive->proc = ((void*)0);
 }
}
