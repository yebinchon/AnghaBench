
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct ide_port_ops {int (* set_dma_mode ) (TYPE_1__*,TYPE_2__*) ;} ;
struct TYPE_9__ {int host_flags; struct ide_port_ops* port_ops; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_10__ {int dma_mode; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_HFLAG_NO_SET_MODE ;
 int IDE_HFLAG_POST_SET_MODE ;
 int ide_config_drive_speed (TYPE_2__*,int const) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;

int ide_set_dma_mode(ide_drive_t *drive, const u8 mode)
{
 ide_hwif_t *hwif = drive->hwif;
 const struct ide_port_ops *port_ops = hwif->port_ops;

 if (hwif->host_flags & IDE_HFLAG_NO_SET_MODE)
  return 0;

 if (port_ops == ((void*)0) || port_ops->set_dma_mode == ((void*)0))
  return -1;

 if (hwif->host_flags & IDE_HFLAG_POST_SET_MODE) {
  if (ide_config_drive_speed(drive, mode))
   return -1;
  drive->dma_mode = mode;
  port_ops->set_dma_mode(hwif, drive);
  return 0;
 } else {
  drive->dma_mode = mode;
  port_ops->set_dma_mode(hwif, drive);
  return ide_config_drive_speed(drive, mode);
 }
}
