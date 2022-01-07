
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_11__ {scalar_t__ kind; int * timings; } ;
typedef TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_10__ {int parent; } ;
struct TYPE_12__ {TYPE_1__ gendev; } ;
typedef TYPE_3__ ide_hwif_t ;
struct TYPE_13__ {int dn; size_t dma_mode; } ;
typedef TYPE_4__ ide_drive_t ;


 size_t const XFER_UDMA_0 ;
 scalar_t__ controller_k2_ata6 ;
 scalar_t__ controller_kl_ata4 ;
 scalar_t__ controller_sh_ata6 ;
 scalar_t__ controller_un_ata6 ;
 TYPE_2__* dev_get_drvdata (int ) ;
 int pmac_ide_do_update_timings (TYPE_4__*) ;
 int set_timings_mdma (TYPE_4__*,scalar_t__,int *,int *,size_t const) ;
 int set_timings_udma_ata4 (int *,size_t const) ;
 int set_timings_udma_ata6 (int *,int *,size_t const) ;
 int set_timings_udma_shasta (int *,int *,size_t const) ;

__attribute__((used)) static void pmac_ide_set_dma_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 pmac_ide_hwif_t *pmif = dev_get_drvdata(hwif->gendev.parent);
 int ret = 0;
 u32 *timings, *timings2, tl[2];
 u8 unit = drive->dn & 1;
 const u8 speed = drive->dma_mode;

 timings = &pmif->timings[unit];
 timings2 = &pmif->timings[unit+2];


 tl[0] = *timings;
 tl[1] = *timings2;

 if (speed >= XFER_UDMA_0) {
  if (pmif->kind == controller_kl_ata4)
   ret = set_timings_udma_ata4(&tl[0], speed);
  else if (pmif->kind == controller_un_ata6
    || pmif->kind == controller_k2_ata6)
   ret = set_timings_udma_ata6(&tl[0], &tl[1], speed);
  else if (pmif->kind == controller_sh_ata6)
   ret = set_timings_udma_shasta(&tl[0], &tl[1], speed);
  else
   ret = -1;
 } else
  set_timings_mdma(drive, pmif->kind, &tl[0], &tl[1], speed);

 if (ret)
  return;


 *timings = tl[0];
 *timings2 = tl[1];

 pmac_ide_do_update_timings(drive);
}
