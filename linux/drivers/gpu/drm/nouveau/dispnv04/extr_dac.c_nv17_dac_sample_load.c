
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct nvkm_gpio {int dummy; } ;
struct nvif_object {int dummy; } ;
struct TYPE_7__ {scalar_t__ family; } ;
struct TYPE_9__ {TYPE_2__ info; struct nvif_object object; } ;
struct TYPE_8__ {TYPE_4__ device; } ;
struct TYPE_6__ {int tvdactestval; int dactestval; } ;
struct nouveau_drm {TYPE_3__ client; TYPE_1__ vbios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct dcb_output {scalar_t__ type; } ;
struct TYPE_10__ {struct dcb_output* dcb; } ;


 int DCB_GPIO_TVDAC0 ;
 int DCB_GPIO_TVDAC1 ;
 scalar_t__ DCB_OUTPUT_TV ;
 int NVReadRAMDAC (struct drm_device*,int,scalar_t__) ;
 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteRAMDAC (struct drm_device*,int,scalar_t__,int) ;
 int NV_CIO_CRE_RPC1_INDEX ;
 scalar_t__ NV_DEVICE_INFO_V0_CURIE ;
 int NV_PBUS_POWERCTRL_2 ;
 int NV_PBUS_POWERCTRL_4 ;
 scalar_t__ NV_PRAMDAC_DACCLK ;
 scalar_t__ NV_PRAMDAC_TESTPOINT_DATA ;
 int NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK ;
 scalar_t__ NV_PRAMDAC_TEST_CONTROL ;
 int NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF ;
 int NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED ;
 int RGB_TEST_DATA (int,int,int) ;
 int msleep (int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_5__* nouveau_encoder (struct drm_encoder*) ;
 int nv04_dac_output_offset (struct drm_encoder*) ;
 int nvif_rd32 (struct nvif_object*,int ) ;
 int nvif_wr32 (struct nvif_object*,int ,int) ;
 int nvkm_gpio_get (struct nvkm_gpio*,int ,int ,int) ;
 int nvkm_gpio_set (struct nvkm_gpio*,int ,int ,int,int) ;
 struct nvkm_gpio* nvxx_gpio (TYPE_4__*) ;

uint32_t nv17_dac_sample_load(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvif_object *device = &nouveau_drm(dev)->client.device.object;
 struct nvkm_gpio *gpio = nvxx_gpio(&drm->client.device);
 struct dcb_output *dcb = nouveau_encoder(encoder)->dcb;
 uint32_t sample, testval, regoffset = nv04_dac_output_offset(encoder);
 uint32_t saved_powerctrl_2 = 0, saved_powerctrl_4 = 0, saved_routput,
  saved_rtest_ctrl, saved_gpio0 = 0, saved_gpio1 = 0, temp, routput;
 int head;


 if (dcb->type == DCB_OUTPUT_TV) {
  testval = (0xa0 << 0 | 0xa0 << 10 | 0xa0 << 20);

  if (drm->vbios.tvdactestval)
   testval = drm->vbios.tvdactestval;
 } else {
  testval = (0x140 << 0 | 0x140 << 10 | 0x140 << 20);

  if (drm->vbios.dactestval)
   testval = drm->vbios.dactestval;
 }

 saved_rtest_ctrl = NVReadRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset,
        saved_rtest_ctrl & ~NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF);

 saved_powerctrl_2 = nvif_rd32(device, NV_PBUS_POWERCTRL_2);

 nvif_wr32(device, NV_PBUS_POWERCTRL_2, saved_powerctrl_2 & 0xd7ffffff);
 if (regoffset == 0x68) {
  saved_powerctrl_4 = nvif_rd32(device, NV_PBUS_POWERCTRL_4);
  nvif_wr32(device, NV_PBUS_POWERCTRL_4, saved_powerctrl_4 & 0xffffffcf);
 }

 if (gpio) {
  saved_gpio1 = nvkm_gpio_get(gpio, 0, DCB_GPIO_TVDAC1, 0xff);
  saved_gpio0 = nvkm_gpio_get(gpio, 0, DCB_GPIO_TVDAC0, 0xff);
  nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC1, 0xff, dcb->type == DCB_OUTPUT_TV);
  nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC0, 0xff, dcb->type == DCB_OUTPUT_TV);
 }

 msleep(4);

 saved_routput = NVReadRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset);
 head = (saved_routput & 0x100) >> 8;


 if (!(NVReadVgaCrtc(dev, head, NV_CIO_CRE_RPC1_INDEX) & 0xC0))
  head ^= 1;


 routput = (saved_routput & 0xfffffece) | head << 8;

 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_CURIE) {
  if (dcb->type == DCB_OUTPUT_TV)
   routput |= 0x1a << 16;
  else
   routput &= ~(0x1a << 16);
 }

 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset, routput);
 msleep(1);

 temp = NVReadRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset);
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset, temp | 1);

 NVWriteRAMDAC(dev, head, NV_PRAMDAC_TESTPOINT_DATA,
        NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK | testval);
 temp = NVReadRAMDAC(dev, head, NV_PRAMDAC_TEST_CONTROL);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_TEST_CONTROL,
        temp | NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED);
 msleep(5);

 sample = NVReadRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);

 sample &= NVReadRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);

 temp = NVReadRAMDAC(dev, head, NV_PRAMDAC_TEST_CONTROL);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_TEST_CONTROL,
        temp & ~NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_TESTPOINT_DATA, 0);


 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset, saved_routput);
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset, saved_rtest_ctrl);
 if (regoffset == 0x68)
  nvif_wr32(device, NV_PBUS_POWERCTRL_4, saved_powerctrl_4);
 nvif_wr32(device, NV_PBUS_POWERCTRL_2, saved_powerctrl_2);

 if (gpio) {
  nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC1, 0xff, saved_gpio1);
  nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC0, 0xff, saved_gpio0);
 }

 return sample;
}
