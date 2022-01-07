
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int SB_ADDR ;
 int SB_BUSY ;
 int SB_BYTE_ENABLE ;
 int SB_DATA ;
 int SB_DEST ;
 int SB_DEST_DPLL ;
 int SB_OPCODE ;
 int SB_OPCODE_READ ;
 int SB_PCKT ;
 int SET_FIELD (int,int ) ;
 int wait_for (int,int) ;

int cdv_sb_read(struct drm_device *dev, u32 reg, u32 *val)
{
 int ret;

 ret = wait_for((REG_READ(SB_PCKT) & SB_BUSY) == 0, 1000);
 if (ret) {
  DRM_ERROR("timeout waiting for SB to idle before read\n");
  return ret;
 }

 REG_WRITE(SB_ADDR, reg);
 REG_WRITE(SB_PCKT,
     SET_FIELD(SB_OPCODE_READ, SB_OPCODE) |
     SET_FIELD(SB_DEST_DPLL, SB_DEST) |
     SET_FIELD(0xf, SB_BYTE_ENABLE));

 ret = wait_for((REG_READ(SB_PCKT) & SB_BUSY) == 0, 1000);
 if (ret) {
  DRM_ERROR("timeout waiting for SB to idle after read\n");
  return ret;
 }

 *val = REG_READ(SB_DATA);

 return 0;
}
