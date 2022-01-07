
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amd64_pvt {int fam; int model; int dhar; int F1; } ;


 int BIT (int ) ;
 int DRAM_CONT_BASE ;
 int amd64_read_pci_cfg (int ,int ,int*) ;

__attribute__((used)) static inline u8 dhar_valid(struct amd64_pvt *pvt)
{
 if (pvt->fam == 0x15 && pvt->model >= 0x30) {
  u32 tmp;
  amd64_read_pci_cfg(pvt->F1, DRAM_CONT_BASE, &tmp);
  return (tmp >> 1) & BIT(0);
 }
 return (pvt)->dhar & BIT(0);
}
