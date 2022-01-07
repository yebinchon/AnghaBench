
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int pci_mc_info; } ;
struct sbridge_pvt {TYPE_1__ knl; } ;


 int KNL_TOHM_0 ;
 int KNL_TOHM_1 ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static u64 knl_get_tohm(struct sbridge_pvt *pvt)
{
 u64 rc;
 u32 reg_lo, reg_hi;

 pci_read_config_dword(pvt->knl.pci_mc_info, KNL_TOHM_0, &reg_lo);
 pci_read_config_dword(pvt->knl.pci_mc_info, KNL_TOHM_1, &reg_hi);
 rc = ((u64)reg_hi << 32) | reg_lo;
 return rc | 0x3ffffff;
}
