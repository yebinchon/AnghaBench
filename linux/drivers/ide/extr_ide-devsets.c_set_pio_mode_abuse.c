
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int host_flags; } ;
typedef TYPE_1__ ide_hwif_t ;


 int IDE_HFLAG_ABUSE_DMA_MODES ;
 int IDE_HFLAG_ABUSE_FAST_DEVSEL ;
 int IDE_HFLAG_ABUSE_PREFETCH ;

__attribute__((used)) static int set_pio_mode_abuse(ide_hwif_t *hwif, u8 req_pio)
{
 switch (req_pio) {
 case 202:
 case 201:
 case 200:
 case 102:
 case 101:
 case 100:
  return (hwif->host_flags & IDE_HFLAG_ABUSE_DMA_MODES) ? 1 : 0;
 case 9:
 case 8:
  return (hwif->host_flags & IDE_HFLAG_ABUSE_PREFETCH) ? 1 : 0;
 case 7:
 case 6:
  return (hwif->host_flags & IDE_HFLAG_ABUSE_FAST_DEVSEL) ? 1 : 0;
 default:
  return 0;
 }
}
