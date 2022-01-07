
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int NPS_PKT_MBOX_PF_VF_PFDATAX (int) ;
 int nitrox_write_csr (struct nitrox_device*,int ,int ) ;

__attribute__((used)) static inline void pf2vf_write_mbox(struct nitrox_device *ndev, u64 value,
        int ring)
{
 u64 reg_addr;

 reg_addr = NPS_PKT_MBOX_PF_VF_PFDATAX(ring);
 nitrox_write_csr(ndev, reg_addr, value);
}
