
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int NPS_PKT_MBOX_VF_PF_PFDATAX (int) ;
 int nitrox_read_csr (struct nitrox_device*,int ) ;

__attribute__((used)) static inline u64 pf2vf_read_mbox(struct nitrox_device *ndev, int ring)
{
 u64 reg_addr;

 reg_addr = NPS_PKT_MBOX_VF_PF_PFDATAX(ring);
 return nitrox_read_csr(ndev, reg_addr);
}
