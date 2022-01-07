
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int capsule_pending ;
 int efi_reset_type ;

bool efi_capsule_pending(int *reset_type)
{
 if (!capsule_pending)
  return 0;

 if (reset_type)
  *reset_type = efi_reset_type;

 return 1;
}
