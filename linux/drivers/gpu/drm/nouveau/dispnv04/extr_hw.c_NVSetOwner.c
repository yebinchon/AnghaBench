
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


 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteVgaCrtc (struct drm_device*,int ,int ,int) ;
 int NV_CIO_CRE_2E ;
 int NV_CIO_CRE_44 ;
 int NV_CIO_SR_LOCK_INDEX ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

void
NVSetOwner(struct drm_device *dev, int owner)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (owner == 1)
  owner *= 3;

 if (drm->client.device.info.chipset == 0x11) {



  NVReadVgaCrtc(dev, 0, NV_CIO_SR_LOCK_INDEX);
  NVReadVgaCrtc(dev, 1, NV_CIO_SR_LOCK_INDEX);
 }


 NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_44, owner);

 if (drm->client.device.info.chipset == 0x11) {
  NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_2E, owner);
  NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_2E, owner);
 }
}
