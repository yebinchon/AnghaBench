
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteVgaCrtc (struct drm_device*,int,int ,int) ;
 int NV_CIO_CRE_21 ;

__attribute__((used)) static inline void
nv_lock_vga_crtc_shadow(struct drm_device *dev, int head, int lock)
{
 uint8_t cr21 = lock;

 if (lock < 0)

  cr21 = NVReadVgaCrtc(dev, head, NV_CIO_CRE_21) | 0xfa;

 NVWriteVgaCrtc(dev, head, NV_CIO_CRE_21, cr21);
}
