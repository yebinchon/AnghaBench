
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ent_en; int rng_en; } ;
union efl_rnm_ctl_status {int value; TYPE_1__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int EFL_RNM_CTL_STATUS ;
 int nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,int ) ;

void nitrox_config_rand_unit(struct nitrox_device *ndev)
{
 union efl_rnm_ctl_status efl_rnm_ctl;
 u64 offset;

 offset = EFL_RNM_CTL_STATUS;
 efl_rnm_ctl.value = nitrox_read_csr(ndev, offset);
 efl_rnm_ctl.s.ent_en = 1;
 efl_rnm_ctl.s.rng_en = 1;
 nitrox_write_csr(ndev, offset, efl_rnm_ctl.value);
}
