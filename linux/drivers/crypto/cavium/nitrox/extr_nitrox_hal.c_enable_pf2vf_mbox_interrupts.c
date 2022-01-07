
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nitrox_device {int dummy; } ;


 unsigned long long NPS_PKT_MBOX_INT_HI_ENA_W1S ;
 unsigned long long NPS_PKT_MBOX_INT_LO_ENA_W1S ;
 int nitrox_write_csr (struct nitrox_device*,unsigned long long,unsigned long long) ;

void enable_pf2vf_mbox_interrupts(struct nitrox_device *ndev)
{
 u64 value = ~0ULL;
 u64 reg_addr;


 reg_addr = NPS_PKT_MBOX_INT_LO_ENA_W1S;
 nitrox_write_csr(ndev, reg_addr, value);


 reg_addr = NPS_PKT_MBOX_INT_HI_ENA_W1S;
 nitrox_write_csr(ndev, reg_addr, value);
}
