
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_info {int * data; } ;



__attribute__((used)) static int efi_pstore_close(struct pstore_info *psi)
{
 psi->data = ((void*)0);
 return 0;
}
