
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
struct TYPE_4__ {TYPE_1__ memmap; } ;


 TYPE_2__ efi ;
 size_t efi_get_runtime_map_size () ;
 int memcpy (void*,int ,size_t) ;

int efi_runtime_map_copy(void *buf, size_t bufsz)
{
 size_t sz = efi_get_runtime_map_size();

 if (sz > bufsz)
  sz = bufsz;

 memcpy(buf, efi.memmap.map, sz);
 return 0;
}
