
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int pci_mc_info; } ;
struct sbridge_pvt {TYPE_1__ knl; } ;


 int GET_BITFIELD (int ,int,int) ;
 int KNL_TOLM ;
 int pci_read_config_dword (int ,int ,int *) ;

__attribute__((used)) static u64 knl_get_tolm(struct sbridge_pvt *pvt)
{
 u32 reg;

 pci_read_config_dword(pvt->knl.pci_mc_info, KNL_TOLM, &reg);
 return (GET_BITFIELD(reg, 26, 31) << 26) | 0x3ffffff;
}
