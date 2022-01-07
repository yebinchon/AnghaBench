
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ide_port_ops {int (* maskproc ) (TYPE_2__*,int) ;} ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {struct ide_port_ops* port_ops; } ;


 int stub1 (TYPE_2__*,int) ;

void SELECT_MASK(ide_drive_t *drive, int mask)
{
 const struct ide_port_ops *port_ops = drive->hwif->port_ops;

 if (port_ops && port_ops->maskproc)
  port_ops->maskproc(drive, mask);
}
