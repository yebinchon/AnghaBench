
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxl {int i2cdev; } ;
typedef enum MXL_HYDRA_TS_DRIVE_STRENGTH_E { ____Placeholder_MXL_HYDRA_TS_DRIVE_STRENGTH_E } MXL_HYDRA_TS_DRIVE_STRENGTH_E ;


 int dev_info (int ,char*,int) ;
 int read_register (struct mxl*,int,int*) ;
 int update_by_mnemonic (struct mxl*,int,int,int,int) ;

__attribute__((used)) static int set_drive_strength(struct mxl *state,
  enum MXL_HYDRA_TS_DRIVE_STRENGTH_E ts_drive_strength)
{
 int stat = 0;
 u32 val;

 read_register(state, 0x90000194, &val);
 dev_info(state->i2cdev, "DIGIO = %08x\n", val);
 dev_info(state->i2cdev, "set drive_strength = %u\n", ts_drive_strength);


 stat |= update_by_mnemonic(state, 0x90000194, 0, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x90000194, 20, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x90000194, 24, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x90000198, 12, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x90000198, 16, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x90000198, 20, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x90000198, 24, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x9000019C, 0, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x9000019C, 4, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x9000019C, 8, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x9000019C, 24, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x9000019C, 28, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x900001A0, 0, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x900001A0, 4, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x900001A0, 20, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x900001A0, 24, 3, ts_drive_strength);
 stat |= update_by_mnemonic(state, 0x900001A0, 28, 3, ts_drive_strength);

 return stat;
}
