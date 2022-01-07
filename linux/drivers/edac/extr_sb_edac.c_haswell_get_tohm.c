
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int pci_vtd; } ;
struct sbridge_pvt {TYPE_1__ info; } ;


 int GET_BITFIELD (int,int,int) ;
 int HASWELL_TOHM_0 ;
 int HASWELL_TOHM_1 ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static u64 haswell_get_tohm(struct sbridge_pvt *pvt)
{
 u64 rc;
 u32 reg;

 pci_read_config_dword(pvt->info.pci_vtd, HASWELL_TOHM_0, &reg);
 rc = GET_BITFIELD(reg, 26, 31);
 pci_read_config_dword(pvt->info.pci_vtd, HASWELL_TOHM_1, &reg);
 rc = ((reg << 6) | rc) << 26;

 return rc | 0x1ffffff;
}
