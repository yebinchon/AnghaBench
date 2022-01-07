
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chipset; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc (struct drm_device*,int ,int ) ;
 int NVWriteVgaCrtc (struct drm_device*,int,int ,int ) ;
 int NV_CIO_SR_LOCK_INDEX ;
 int NV_CIO_SR_LOCK_VALUE ;
 int NV_CIO_SR_UNLOCK_RW_VALUE ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv_heads_tied (struct drm_device*) ;

__attribute__((used)) static inline bool
NVLockVgaCrtcs(struct drm_device *dev, bool lock)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 bool waslocked = !NVReadVgaCrtc(dev, 0, NV_CIO_SR_LOCK_INDEX);

 NVWriteVgaCrtc(dev, 0, NV_CIO_SR_LOCK_INDEX,
         lock ? NV_CIO_SR_LOCK_VALUE : NV_CIO_SR_UNLOCK_RW_VALUE);

 if (drm->client.device.info.chipset == 0x11 && !nv_heads_tied(dev))
  NVWriteVgaCrtc(dev, 1, NV_CIO_SR_LOCK_INDEX,
          lock ? NV_CIO_SR_LOCK_VALUE :
          NV_CIO_SR_UNLOCK_RW_VALUE);

 return waslocked;
}
