
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int SIL164_FREQ_HI ;
 int SIL164_FREQ_LO ;
 int SIL164_REG8 ;
 int SIL164_REG9 ;
 int SIL164_REGC ;
 int sil164_readb (struct intel_dvo_device*,int ,int *) ;

__attribute__((used)) static void sil164_dump_regs(struct intel_dvo_device *dvo)
{
 u8 val;

 sil164_readb(dvo, SIL164_FREQ_LO, &val);
 DRM_DEBUG_KMS("SIL164_FREQ_LO: 0x%02x\n", val);
 sil164_readb(dvo, SIL164_FREQ_HI, &val);
 DRM_DEBUG_KMS("SIL164_FREQ_HI: 0x%02x\n", val);
 sil164_readb(dvo, SIL164_REG8, &val);
 DRM_DEBUG_KMS("SIL164_REG8: 0x%02x\n", val);
 sil164_readb(dvo, SIL164_REG9, &val);
 DRM_DEBUG_KMS("SIL164_REG9: 0x%02x\n", val);
 sil164_readb(dvo, SIL164_REGC, &val);
 DRM_DEBUG_KMS("SIL164_REGC: 0x%02x\n", val);
}
