
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hpt_info {scalar_t__ chip_type; int pci_clk; scalar_t__ dpll_clk; } ;
struct TYPE_5__ {int select_data; int * rw_disk; TYPE_1__* host; scalar_t__ channel; int dev; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_4__ {int host_flags; } ;


 scalar_t__ HPT372N ;
 int IDE_HFLAG_SERIALIZE ;
 struct hpt_info* hpt3xx_get_info (int ) ;
 int hpt3xxn_rw_disk ;

__attribute__((used)) static void init_hwif_hpt366(ide_hwif_t *hwif)
{
 struct hpt_info *info = hpt3xx_get_info(hwif->dev);
 u8 chip_type = info->chip_type;


 hwif->select_data = hwif->channel ? 0x54 : 0x50;







 if (chip_type >= HPT372N && info->dpll_clk && info->pci_clk < 66) {




  hwif->host->host_flags |= IDE_HFLAG_SERIALIZE;
  hwif->rw_disk = &hpt3xxn_rw_disk;
 }
}
