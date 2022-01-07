
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t edac_pci_int_show(void *ptr, char *buffer)
{
 int *value = ptr;
 return sprintf(buffer, "%d\n", *value);
}
