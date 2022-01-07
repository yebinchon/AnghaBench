
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mxl {TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ can_clkout; } ;


 int HYDRA_CRYSTAL_CAP ;
 int HYDRA_CRYSTAL_SETTING ;
 int update_by_mnemonic (struct mxl*,int,int,int,int) ;
 int write_register (struct mxl*,int ,int) ;

__attribute__((used)) static void cfg_dev_xtal(struct mxl *state, u32 freq, u32 cap, u32 enable)
{
 if (state->base->can_clkout || !enable)
  update_by_mnemonic(state, 0x90200054, 23, 1, enable);

 if (freq == 24000000)
  write_register(state, HYDRA_CRYSTAL_SETTING, 0);
 else
  write_register(state, HYDRA_CRYSTAL_SETTING, 1);

 write_register(state, HYDRA_CRYSTAL_CAP, cap);
}
