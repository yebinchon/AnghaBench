
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_4__ {int tvdactestval; } ;
struct TYPE_3__ {int device; } ;
struct nouveau_drm {TYPE_2__ vbios; TYPE_1__ client; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DCB_GPIO_TVDAC0 ;
 int DCB_GPIO_TVDAC1 ;
 int NVReadRAMDAC (struct drm_device*,int,int) ;
 int NVWriteRAMDAC (struct drm_device*,int,int,int) ;
 int NV_PRAMDAC_DACCLK ;
 int NV_PRAMDAC_FP_HSYNC_END ;
 int NV_PRAMDAC_FP_HSYNC_START ;
 int NV_PRAMDAC_FP_HTOTAL ;
 int NV_PRAMDAC_FP_TG_CONTROL ;
 int NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS ;
 int NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS ;
 int NV_PRAMDAC_FP_TG_CONTROL_READ_PROG ;
 int NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS ;
 int NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12 ;
 int NV_PRAMDAC_TEST_CONTROL ;
 int RGB_TEST_DATA (int,int,int) ;
 int msleep (int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv04_dac_output_offset (struct drm_encoder*) ;
 int nvkm_gpio_get (struct nvkm_gpio*,int ,int ,int) ;
 int nvkm_gpio_set (struct nvkm_gpio*,int ,int ,int,int) ;
 struct nvkm_gpio* nvxx_gpio (int *) ;

__attribute__((used)) static uint32_t nv42_tv_sample_load(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvkm_gpio *gpio = nvxx_gpio(&drm->client.device);
 uint32_t testval, regoffset = nv04_dac_output_offset(encoder);
 uint32_t gpio0, gpio1, fp_htotal, fp_hsync_start, fp_hsync_end,
  fp_control, test_ctrl, dacclk, ctv_14, ctv_1c, ctv_6c;
 uint32_t sample = 0;
 int head;


 testval = (0x82 << 0 | 0xeb << 10 | 0x82 << 20);
 if (drm->vbios.tvdactestval)
  testval = drm->vbios.tvdactestval;

 dacclk = NVReadRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset);
 head = (dacclk & 0x100) >> 8;


 gpio1 = nvkm_gpio_get(gpio, 0, DCB_GPIO_TVDAC1, 0xff);
 gpio0 = nvkm_gpio_get(gpio, 0, DCB_GPIO_TVDAC0, 0xff);
 fp_htotal = NVReadRAMDAC(dev, head, NV_PRAMDAC_FP_HTOTAL);
 fp_hsync_start = NVReadRAMDAC(dev, head, NV_PRAMDAC_FP_HSYNC_START);
 fp_hsync_end = NVReadRAMDAC(dev, head, NV_PRAMDAC_FP_HSYNC_END);
 fp_control = NVReadRAMDAC(dev, head, NV_PRAMDAC_FP_TG_CONTROL);
 test_ctrl = NVReadRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);
 ctv_1c = NVReadRAMDAC(dev, head, 0x680c1c);
 ctv_14 = NVReadRAMDAC(dev, head, 0x680c14);
 ctv_6c = NVReadRAMDAC(dev, head, 0x680c6c);


 nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC1, 0xff, 1);
 nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC0, 0xff, 1);

 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_HTOTAL, 1343);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_HSYNC_START, 1047);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_HSYNC_END, 1183);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_TG_CONTROL,
        NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS |
        NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12 |
        NV_PRAMDAC_FP_TG_CONTROL_READ_PROG |
        NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS |
        NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS);

 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset, 0);

 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset,
        (dacclk & ~0xff) | 0x22);
 msleep(1);
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset,
        (dacclk & ~0xff) | 0x21);

 NVWriteRAMDAC(dev, head, 0x680c1c, 1 << 20);
 NVWriteRAMDAC(dev, head, 0x680c14, 4 << 16);


 NVWriteRAMDAC(dev, head, 0x680c6c, testval >> 10 & 0x3ff);
 msleep(20);
 sample |= NVReadRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset)
  & 0x4 << 28;


 NVWriteRAMDAC(dev, head, 0x680c6c, testval & 0x3ff);
 msleep(20);
 sample |= NVReadRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset)
  & 0xa << 28;


 NVWriteRAMDAC(dev, head, 0x680c1c, ctv_1c);
 NVWriteRAMDAC(dev, head, 0x680c14, ctv_14);
 NVWriteRAMDAC(dev, head, 0x680c6c, ctv_6c);
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK + regoffset, dacclk);
 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset, test_ctrl);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_TG_CONTROL, fp_control);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_HSYNC_END, fp_hsync_end);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_HSYNC_START, fp_hsync_start);
 NVWriteRAMDAC(dev, head, NV_PRAMDAC_FP_HTOTAL, fp_htotal);
 nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC1, 0xff, gpio1);
 nvkm_gpio_set(gpio, 0, DCB_GPIO_TVDAC0, 0xff, gpio0);

 return sample;
}
