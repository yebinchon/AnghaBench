
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ide_hw {int config; scalar_t__ dev; scalar_t__ parent; int irq; int io_ports; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct TYPE_5__ {int config_data; TYPE_1__ gendev; scalar_t__ dev; int irq; int io_ports; } ;
typedef TYPE_2__ ide_hwif_t ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void ide_init_port_hw(ide_hwif_t *hwif, struct ide_hw *hw)
{
 memcpy(&hwif->io_ports, &hw->io_ports, sizeof(hwif->io_ports));
 hwif->irq = hw->irq;
 hwif->dev = hw->dev;
 hwif->gendev.parent = hw->parent ? hw->parent : hw->dev;
 hwif->config_data = hw->config;
}
