
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct via82cxxx_dev {TYPE_1__* via_config; } ;
struct pci_dev {int dummy; } ;
struct ide_timing {int dummy; } ;
struct ide_host {struct via82cxxx_dev* host_priv; } ;
struct TYPE_11__ {int dev; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_12__ {int dn; int const pio_mode; int dma_mode; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_10__ {int udma_mask; } ;






 int IDE_TIMING_8BIT ;
 TYPE_3__* ide_get_pair_dev (TYPE_3__*) ;
 int ide_timing_compute (TYPE_3__*,int const,struct ide_timing*,unsigned int,unsigned int) ;
 int ide_timing_merge (struct ide_timing*,struct ide_timing*,struct ide_timing*,int ) ;
 struct ide_host* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;
 int via_clock ;
 int via_set_speed (TYPE_2__*,int ,struct ide_timing*) ;

__attribute__((used)) static void via_set_drive(ide_hwif_t *hwif, ide_drive_t *drive)
{
 ide_drive_t *peer = ide_get_pair_dev(drive);
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct ide_host *host = pci_get_drvdata(dev);
 struct via82cxxx_dev *vdev = host->host_priv;
 struct ide_timing t, p;
 unsigned int T, UT;
 const u8 speed = drive->dma_mode;

 T = 1000000000 / via_clock;

 switch (vdev->via_config->udma_mask) {
 case 131: UT = T; break;
 case 130: UT = T/2; break;
 case 129: UT = T/3; break;
 case 128: UT = T/4; break;
 default: UT = T;
 }

 ide_timing_compute(drive, speed, &t, T, UT);

 if (peer) {
  ide_timing_compute(peer, peer->pio_mode, &p, T, UT);
  ide_timing_merge(&p, &t, &t, IDE_TIMING_8BIT);
 }

 via_set_speed(hwif, drive->dn, &t);
}
