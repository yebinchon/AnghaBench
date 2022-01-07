
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd64_pvt {int F6; } ;


 int F17H_SCR_BASE_ADDR ;
 int F17H_SCR_LIMIT_ADDR ;
 int pci_write_bits32 (int ,int ,int,int) ;

__attribute__((used)) static inline void __f17h_set_scrubval(struct amd64_pvt *pvt, u32 scrubval)
{





 if (scrubval >= 0x5 && scrubval <= 0x14) {
  scrubval -= 0x5;
  pci_write_bits32(pvt->F6, F17H_SCR_LIMIT_ADDR, scrubval, 0xF);
  pci_write_bits32(pvt->F6, F17H_SCR_BASE_ADDR, 1, 0x1);
 } else {
  pci_write_bits32(pvt->F6, F17H_SCR_BASE_ADDR, 0, 0x1);
 }
}
