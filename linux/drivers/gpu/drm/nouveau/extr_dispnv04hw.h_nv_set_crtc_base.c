
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteCRTC (struct drm_device*,int,int ,int) ;
 int NVWriteVgaCrtc (struct drm_device*,int,int ,int) ;
 int NV_CIO_CRE_HEB__INDEX ;
 scalar_t__ NV_DEVICE_INFO_V0_TNT ;
 int NV_PCRTC_START ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static inline void
nv_set_crtc_base(struct drm_device *dev, int head, uint32_t offset)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 NVWriteCRTC(dev, head, NV_PCRTC_START, offset);

 if (drm->client.device.info.family == NV_DEVICE_INFO_V0_TNT) {




  int cre_heb = NVReadVgaCrtc(dev, head, NV_CIO_CRE_HEB__INDEX);

  NVWriteVgaCrtc(dev, head, NV_CIO_CRE_HEB__INDEX,
          (cre_heb & ~0x40) | ((offset >> 18) & 0x40));
 }
}
