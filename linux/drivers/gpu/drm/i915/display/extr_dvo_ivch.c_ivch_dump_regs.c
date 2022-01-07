
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_dvo_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int VR00 ;
 int VR01 ;
 int VR10 ;
 int VR30 ;
 int VR40 ;
 int VR80 ;
 int VR81 ;
 int VR82 ;
 int VR83 ;
 int VR84 ;
 int VR85 ;
 int VR86 ;
 int VR87 ;
 int VR88 ;
 int VR8E ;
 int VR8F ;
 int ivch_read (struct intel_dvo_device*,int ,int *) ;

__attribute__((used)) static void ivch_dump_regs(struct intel_dvo_device *dvo)
{
 u16 val;

 ivch_read(dvo, VR00, &val);
 DRM_DEBUG_KMS("VR00: 0x%04x\n", val);
 ivch_read(dvo, VR01, &val);
 DRM_DEBUG_KMS("VR01: 0x%04x\n", val);
 ivch_read(dvo, VR10, &val);
 DRM_DEBUG_KMS("VR10: 0x%04x\n", val);
 ivch_read(dvo, VR30, &val);
 DRM_DEBUG_KMS("VR30: 0x%04x\n", val);
 ivch_read(dvo, VR40, &val);
 DRM_DEBUG_KMS("VR40: 0x%04x\n", val);


 ivch_read(dvo, VR80, &val);
 DRM_DEBUG_KMS("VR80: 0x%04x\n", val);
 ivch_read(dvo, VR81, &val);
 DRM_DEBUG_KMS("VR81: 0x%04x\n", val);
 ivch_read(dvo, VR82, &val);
 DRM_DEBUG_KMS("VR82: 0x%04x\n", val);
 ivch_read(dvo, VR83, &val);
 DRM_DEBUG_KMS("VR83: 0x%04x\n", val);
 ivch_read(dvo, VR84, &val);
 DRM_DEBUG_KMS("VR84: 0x%04x\n", val);
 ivch_read(dvo, VR85, &val);
 DRM_DEBUG_KMS("VR85: 0x%04x\n", val);
 ivch_read(dvo, VR86, &val);
 DRM_DEBUG_KMS("VR86: 0x%04x\n", val);
 ivch_read(dvo, VR87, &val);
 DRM_DEBUG_KMS("VR87: 0x%04x\n", val);
 ivch_read(dvo, VR88, &val);
 DRM_DEBUG_KMS("VR88: 0x%04x\n", val);


 ivch_read(dvo, VR8E, &val);
 DRM_DEBUG_KMS("VR8E: 0x%04x\n", val);


 ivch_read(dvo, VR8F, &val);
 DRM_DEBUG_KMS("VR8F: 0x%04x\n", val);
}
