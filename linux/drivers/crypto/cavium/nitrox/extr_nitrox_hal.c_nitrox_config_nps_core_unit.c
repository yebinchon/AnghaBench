
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ilk_disable; int cfg; } ;
union nps_core_gbl_vfcfg {unsigned long long value; TYPE_1__ s; } ;
struct nitrox_device {int dummy; } ;


 int NPS_CORE_CONTROL ;
 int NPS_CORE_GBL_VFCFG ;
 int __NDEV_MODE_PF ;
 int enable_nps_core_interrupts (struct nitrox_device*) ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;

void nitrox_config_nps_core_unit(struct nitrox_device *ndev)
{
 union nps_core_gbl_vfcfg core_gbl_vfcfg;


 nitrox_write_csr(ndev, NPS_CORE_CONTROL, 1ULL);


 core_gbl_vfcfg.value = 0;
 core_gbl_vfcfg.s.ilk_disable = 1;
 core_gbl_vfcfg.s.cfg = __NDEV_MODE_PF;
 nitrox_write_csr(ndev, NPS_CORE_GBL_VFCFG, core_gbl_vfcfg.value);


 enable_nps_core_interrupts(ndev);
}
