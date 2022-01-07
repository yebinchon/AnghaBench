
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_runtime ;

bool efi_runtime_disabled(void)
{
 return disable_runtime;
}
