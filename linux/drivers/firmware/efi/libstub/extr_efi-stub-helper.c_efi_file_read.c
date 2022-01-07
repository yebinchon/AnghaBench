
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;


 int efi_call_proto (int ,int ,void*,unsigned long*,void*) ;
 int efi_file_handle ;
 int read ;

__attribute__((used)) static efi_status_t efi_file_read(void *handle, unsigned long *size, void *addr)
{
 return efi_call_proto(efi_file_handle, read, handle, size, addr);
}
