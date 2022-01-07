
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ isdigit (char const) ;
 int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t edac_pci_int_store(void *ptr, const char *buffer, size_t count)
{
 int *value = ptr;

 if (isdigit(*buffer))
  *value = simple_strtoul(buffer, ((void*)0), 0);

 return count;
}
