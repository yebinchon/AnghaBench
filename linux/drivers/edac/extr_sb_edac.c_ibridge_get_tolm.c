
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sbridge_pvt {int pci_br1; } ;


 int GET_TOLM (int ) ;
 int TOLM ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static u64 ibridge_get_tolm(struct sbridge_pvt *pvt)
{
 u32 reg;

 pci_read_config_dword(pvt->pci_br1, TOLM, &reg);

 return GET_TOLM(reg);
}
