
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mxl {TYPE_1__* base; int i2cdev; } ;
struct TYPE_2__ {int type; } ;


 int MXL_HYDRA_DEVICE_542 ;
 int MXL_HYDRA_DEVICE_544 ;
 int MXL_HYDRA_DEVICE_581 ;
 int MXL_HYDRA_DEVICE_581S ;
 int MXL_HYDRA_DEVICE_582 ;
 int MXL_HYDRA_DEVICE_584 ;




 int dev_info (int ,char*,int,int,int) ;
 int read_by_mnemonic (struct mxl*,int,int,int,int*) ;

__attribute__((used)) static int validate_sku(struct mxl *state)
{
 u32 pad_mux_bond = 0, prcm_chip_id = 0, prcm_so_cid = 0;
 int status;
 u32 type = state->base->type;

 status = read_by_mnemonic(state, 0x90000190, 0, 3, &pad_mux_bond);
 status |= read_by_mnemonic(state, 0x80030000, 0, 12, &prcm_chip_id);
 status |= read_by_mnemonic(state, 0x80030004, 24, 8, &prcm_so_cid);
 if (status)
  return -1;

 dev_info(state->i2cdev, "padMuxBond=%08x, prcmChipId=%08x, prcmSoCId=%08x\n",
  pad_mux_bond, prcm_chip_id, prcm_so_cid);

 if (prcm_chip_id != 0x560) {
  switch (pad_mux_bond) {
  case 130:
   if (type == MXL_HYDRA_DEVICE_581)
    return 0;
   if (type == MXL_HYDRA_DEVICE_581S) {
    state->base->type = MXL_HYDRA_DEVICE_581;
    return 0;
   }
   break;
  case 128:
   if (type == MXL_HYDRA_DEVICE_584)
    return 0;
   break;
  case 131:
   if (type == MXL_HYDRA_DEVICE_544)
    return 0;
   if (type == MXL_HYDRA_DEVICE_542)
    return 0;
   break;
  case 129:
   if (type == MXL_HYDRA_DEVICE_582)
    return 0;
   break;
  default:
   return -1;
  }
 } else {

 }
 return -1;
}
