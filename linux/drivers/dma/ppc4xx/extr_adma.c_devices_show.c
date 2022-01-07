
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int PPC440SPE_ADMA_ENGINES_NUM ;
 int* ppc440spe_adma_devices ;
 char** ppc_adma_errors ;
 int snprintf (char*,int,char*,int,char*) ;

__attribute__((used)) static ssize_t devices_show(struct device_driver *dev, char *buf)
{
 ssize_t size = 0;
 int i;

 for (i = 0; i < PPC440SPE_ADMA_ENGINES_NUM; i++) {
  if (ppc440spe_adma_devices[i] == -1)
   continue;
  size += snprintf(buf + size, PAGE_SIZE - size,
     "PPC440SP(E)-ADMA.%d: %s\n", i,
     ppc_adma_errors[ppc440spe_adma_devices[i]]);
 }
 return size;
}
