
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;


 int close ;
 int efi_call_proto (int ,int ,void*) ;
 int efi_file_handle ;

__attribute__((used)) static efi_status_t efi_file_close(void *handle)
{
 return efi_call_proto(efi_file_handle, close, handle);
}
