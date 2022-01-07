
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mxl {int dummy; } ;


 int MXL_GET_REG_MASK_32 (int,int) ;
 int read_register (struct mxl*,int,int*) ;
 int write_register (struct mxl*,int,int) ;

__attribute__((used)) static int update_by_mnemonic(struct mxl *state,
         u32 reg, u8 lsbloc, u8 numofbits, u32 val)
{
 u32 data, mask;
 int stat;

 stat = read_register(state, reg, &data);
 if (stat)
  return stat;
 mask = MXL_GET_REG_MASK_32(lsbloc, numofbits);
 data = (data & ~mask) | ((val << lsbloc) & mask);
 stat = write_register(state, reg, data);
 return stat;
}
