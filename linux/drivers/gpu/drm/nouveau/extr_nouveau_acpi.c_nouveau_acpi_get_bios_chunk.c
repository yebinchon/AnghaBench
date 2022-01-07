
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int rom_handle; } ;


 TYPE_1__ nouveau_dsm_priv ;
 int nouveau_rom_call (int ,int *,int,int) ;

int nouveau_acpi_get_bios_chunk(uint8_t *bios, int offset, int len)
{
 return nouveau_rom_call(nouveau_dsm_priv.rom_handle, bios, offset, len);
}
