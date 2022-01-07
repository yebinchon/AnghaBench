
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mxl {TYPE_1__* base; int i2cdev; } ;
struct TYPE_2__ {int fwversion; } ;


 int HYDRA_FIRMWARE_VERSION ;
 int dev_info (int ,char*,int ) ;
 int read_by_mnemonic (struct mxl*,int,int,int,int *) ;
 int read_register (struct mxl*,int ,int *) ;

__attribute__((used)) static int get_fwinfo(struct mxl *state)
{
 int status;
 u32 val = 0;

 status = read_by_mnemonic(state, 0x90000190, 0, 3, &val);
 if (status)
  return status;
 dev_info(state->i2cdev, "chipID=%08x\n", val);

 status = read_by_mnemonic(state, 0x80030004, 8, 8, &val);
 if (status)
  return status;
 dev_info(state->i2cdev, "chipVer=%08x\n", val);

 status = read_register(state, HYDRA_FIRMWARE_VERSION, &val);
 if (status)
  return status;
 dev_info(state->i2cdev, "FWVer=%08x\n", val);

 state->base->fwversion = val;
 return status;
}
