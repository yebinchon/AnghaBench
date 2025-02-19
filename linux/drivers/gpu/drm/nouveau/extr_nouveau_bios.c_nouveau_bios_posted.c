
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc (struct drm_device*,int ,int) ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static bool
nouveau_bios_posted(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 unsigned htotal;

 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA)
  return 1;

 htotal = NVReadVgaCrtc(dev, 0, 0x06);
 htotal |= (NVReadVgaCrtc(dev, 0, 0x07) & 0x01) << 8;
 htotal |= (NVReadVgaCrtc(dev, 0, 0x07) & 0x20) << 4;
 htotal |= (NVReadVgaCrtc(dev, 0, 0x25) & 0x01) << 10;
 htotal |= (NVReadVgaCrtc(dev, 0, 0x41) & 0x01) << 11;
 return (htotal != 0);
}
