
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_hwif_t ;


 int pdc_old_disable_66MHz_clock (int *) ;

__attribute__((used)) static void pdc2026x_init_hwif(ide_hwif_t *hwif)
{
 pdc_old_disable_66MHz_clock(hwif);
}
