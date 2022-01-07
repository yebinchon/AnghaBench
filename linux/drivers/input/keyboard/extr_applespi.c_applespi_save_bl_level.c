
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct applespi_data {TYPE_1__* spi; } ;
typedef int efi_guid_t ;
typedef int efi_data ;
typedef int efi_char16_t ;
struct TYPE_2__ {int dev; } ;


 int EFI_BL_LEVEL_GUID ;
 scalar_t__ EFI_BL_LEVEL_NAME ;
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ;
 int EFI_VARIABLE_NON_VOLATILE ;
 int EFI_VARIABLE_RUNTIME_ACCESS ;
 int dev_warn (int *,char*,int) ;
 int efivar_entry_set_safe (int *,int ,int,int,unsigned long,scalar_t__*) ;

__attribute__((used)) static void applespi_save_bl_level(struct applespi_data *applespi,
       unsigned int level)
{
 efi_guid_t efi_guid;
 u32 efi_attr;
 unsigned long efi_data_len;
 u16 efi_data;
 int sts;


 efi_guid = EFI_BL_LEVEL_GUID;
 efi_data = (u16)level;
 efi_data_len = sizeof(efi_data);
 efi_attr = EFI_VARIABLE_NON_VOLATILE | EFI_VARIABLE_BOOTSERVICE_ACCESS |
     EFI_VARIABLE_RUNTIME_ACCESS;

 sts = efivar_entry_set_safe((efi_char16_t *)EFI_BL_LEVEL_NAME, efi_guid,
        efi_attr, 1, efi_data_len, &efi_data);
 if (sts)
  dev_warn(&applespi->spi->dev,
    "Error saving backlight level to EFI vars: %d\n", sts);
}
