
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int psp_master ;
 int sev_platform_shutdown (int *) ;

void psp_pci_exit(void)
{
 if (!psp_master)
  return;

 sev_platform_shutdown(((void*)0));
}
