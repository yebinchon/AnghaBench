
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amd64_pvt {int model; int F1; } ;


 int DCT_CFG_SEL ;
 int amd64_read_pci_cfg (int ,int ,int*) ;
 int amd64_write_pci_cfg (int ,int ,int) ;

__attribute__((used)) static void f15h_select_dct(struct amd64_pvt *pvt, u8 dct)
{
 u32 reg = 0;

 amd64_read_pci_cfg(pvt->F1, DCT_CFG_SEL, &reg);
 reg &= (pvt->model == 0x30) ? ~3 : ~1;
 reg |= dct;
 amd64_write_pci_cfg(pvt->F1, DCT_CFG_SEL, reg);
}
