
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sbridge_pvt {int pci_sad1; } ;


 int GET_TOHM (int ) ;
 int TOHM ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static u64 sbridge_get_tohm(struct sbridge_pvt *pvt)
{
 u32 reg;

 pci_read_config_dword(pvt->pci_sad1, TOHM, &reg);
 return GET_TOHM(reg);
}
