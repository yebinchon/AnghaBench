
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_map; int desc_size; } ;
struct TYPE_4__ {TYPE_1__ memmap; } ;


 TYPE_2__ efi ;

int efi_get_runtime_map_size(void)
{
 return efi.memmap.nr_map * efi.memmap.desc_size;
}
