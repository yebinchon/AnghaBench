
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct nvkm_pll_vals {int refclk; } ;
struct nvkm_bios {int dummy; } ;
struct nvif_object {int dummy; } ;
struct nvbios_pll {int reg; int refclk; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_6__ {TYPE_1__ info; struct nvif_object object; } ;
struct TYPE_5__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct drm_device {int dummy; } ;
typedef enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;


 int ENOENT ;
 int NVReadRAMDAC (struct drm_device*,int ,int ) ;
 scalar_t__ NV_DEVICE_INFO_V0_CELSIUS ;
 int NV_PRAMDAC_580 ;
 int NV_PRAMDAC_VPLL_COEFF ;
 int NV_RAMDAC_580_VPLL1_ACTIVE ;
 int NV_RAMDAC_580_VPLL2_ACTIVE ;
 int NV_RAMDAC_VPLL2 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_hw_decode_pll (struct drm_device*,int,int,int,struct nvkm_pll_vals*) ;
 scalar_t__ nv_two_reg_pll (struct drm_device*) ;
 int nvbios_pll_parse (struct nvkm_bios*,int,struct nvbios_pll*) ;
 int nvif_rd32 (struct nvif_object*,int) ;
 struct nvkm_bios* nvxx_bios (TYPE_3__*) ;

int
nouveau_hw_get_pllvals(struct drm_device *dev, enum nvbios_pll_type plltype,
         struct nvkm_pll_vals *pllvals)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvif_object *device = &drm->client.device.object;
 struct nvkm_bios *bios = nvxx_bios(&drm->client.device);
 uint32_t reg1, pll1, pll2 = 0;
 struct nvbios_pll pll_lim;
 int ret;

 ret = nvbios_pll_parse(bios, plltype, &pll_lim);
 if (ret || !(reg1 = pll_lim.reg))
  return -ENOENT;

 pll1 = nvif_rd32(device, reg1);
 if (reg1 <= 0x405c)
  pll2 = nvif_rd32(device, reg1 + 4);
 else if (nv_two_reg_pll(dev)) {
  uint32_t reg2 = reg1 + (reg1 == NV_RAMDAC_VPLL2 ? 0x5c : 0x70);

  pll2 = nvif_rd32(device, reg2);
 }

 if (drm->client.device.info.family == NV_DEVICE_INFO_V0_CELSIUS && reg1 >= NV_PRAMDAC_VPLL_COEFF) {
  uint32_t ramdac580 = NVReadRAMDAC(dev, 0, NV_PRAMDAC_580);


  if (reg1 == NV_PRAMDAC_VPLL_COEFF) {
   if (ramdac580 & NV_RAMDAC_580_VPLL1_ACTIVE)
    pll2 = 0;
  } else
   if (ramdac580 & NV_RAMDAC_580_VPLL2_ACTIVE)
    pll2 = 0;
 }

 nouveau_hw_decode_pll(dev, reg1, pll1, pll2, pllvals);
 pllvals->refclk = pll_lim.refclk;
 return 0;
}
