
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ proc; int name; } ;
typedef TYPE_1__ ide_hwif_t ;


 int hwif_entries ;
 int ide_add_proc_entries (scalar_t__,int ,TYPE_1__*) ;
 int proc_ide_root ;
 scalar_t__ proc_mkdir (int ,int ) ;

void ide_proc_register_port(ide_hwif_t *hwif)
{
 if (!hwif->proc) {
  hwif->proc = proc_mkdir(hwif->name, proc_ide_root);

  if (!hwif->proc)
   return;

  ide_add_proc_entries(hwif->proc, hwif_entries, hwif);
 }
}
