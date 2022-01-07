
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
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
 int SB_OPCODE_WRITE ;
 int SB_PCKT ;
 int SET_FIELD (int,int ) ;
 scalar_t__ cdv_sb_read (struct drm_device*,int,int*) ;
 int wait_for (int,int) ;

int cdv_sb_write(struct drm_device *dev, u32 reg, u32 val)
{
 int ret;
 static bool dpio_debug = 1;
 u32 temp;

 if (dpio_debug) {
  if (cdv_sb_read(dev, reg, &temp) == 0)
   DRM_DEBUG_KMS("0x%08x: 0x%08x (before)\n", reg, temp);
  DRM_DEBUG_KMS("0x%08x: 0x%08x\n", reg, val);
 }

 ret = wait_for((REG_READ(SB_PCKT) & SB_BUSY) == 0, 1000);
 if (ret) {
  DRM_ERROR("timeout waiting for SB to idle before write\n");
  return ret;
 }

 REG_WRITE(SB_ADDR, reg);
 REG_WRITE(SB_DATA, val);
 REG_WRITE(SB_PCKT,
     SET_FIELD(SB_OPCODE_WRITE, SB_OPCODE) |
     SET_FIELD(SB_DEST_DPLL, SB_DEST) |
     SET_FIELD(0xf, SB_BYTE_ENABLE));

 ret = wait_for((REG_READ(SB_PCKT) & SB_BUSY) == 0, 1000);
 if (ret) {
  DRM_ERROR("timeout waiting for SB to idle after write\n");
  return ret;
 }

 if (dpio_debug) {
  if (cdv_sb_read(dev, reg, &temp) == 0)
   DRM_DEBUG_KMS("0x%08x: 0x%08x (after)\n", reg, temp);
 }

 return 0;
}
