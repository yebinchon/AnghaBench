
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfg; } ;
union nps_core_gbl_vfcfg {int value; TYPE_1__ s; } ;
struct nitrox_device {int dummy; } ;
typedef enum vf_mode { ____Placeholder_vf_mode } vf_mode ;


 int NPS_CORE_GBL_VFCFG ;
 int nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,int ) ;

void config_nps_core_vfcfg_mode(struct nitrox_device *ndev, enum vf_mode mode)
{
 union nps_core_gbl_vfcfg vfcfg;

 vfcfg.value = nitrox_read_csr(ndev, NPS_CORE_GBL_VFCFG);
 vfcfg.s.cfg = mode & 0x7;

 nitrox_write_csr(ndev, NPS_CORE_GBL_VFCFG, vfcfg.value);
}
