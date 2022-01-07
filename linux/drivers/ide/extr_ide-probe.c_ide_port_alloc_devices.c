
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__** devices; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int * id; } ;
typedef TYPE_2__ ide_drive_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_DRIVES ;
 int SECTOR_SIZE ;
 int ide_port_free_devices (TYPE_1__*) ;
 int kfree (TYPE_2__*) ;
 void* kzalloc_node (int,int ,int) ;

__attribute__((used)) static int ide_port_alloc_devices(ide_hwif_t *hwif, int node)
{
 ide_drive_t *drive;
 int i;

 for (i = 0; i < MAX_DRIVES; i++) {
  drive = kzalloc_node(sizeof(*drive), GFP_KERNEL, node);
  if (drive == ((void*)0))
   goto out_nomem;
  drive->id = kzalloc_node(SECTOR_SIZE, GFP_KERNEL, node);
  if (drive->id == ((void*)0))
   goto out_free_drive;

  hwif->devices[i] = drive;
 }
 return 0;

out_free_drive:
 kfree(drive);
out_nomem:
 ide_port_free_devices(hwif);
 return -ENOMEM;
}
