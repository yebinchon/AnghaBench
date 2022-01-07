
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ esrt; } ;


 int EFI_CONFIG_TABLES ;
 scalar_t__ EFI_INVALID_TABLE_ADDR ;
 TYPE_1__ efi ;
 int efi_enabled (int ) ;

__attribute__((used)) static inline int esrt_table_exists(void)
{
 if (!efi_enabled(EFI_CONFIG_TABLES))
  return 0;
 if (efi.esrt == EFI_INVALID_TABLE_ADDR)
  return 0;
 return 1;
}
