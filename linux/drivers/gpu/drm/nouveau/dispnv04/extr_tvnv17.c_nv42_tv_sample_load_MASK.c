#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_4__ {int tvdactestval; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_2__ vbios; TYPE_1__ client; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_TVDAC0 ; 
 int /*<<< orphan*/  DCB_GPIO_TVDAC1 ; 
 int FUNC0 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int,int) ; 
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
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_encoder*) ; 
 int FUNC6 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct nvkm_gpio* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC9(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct nouveau_drm *drm = FUNC4(dev);
	struct nvkm_gpio *gpio = FUNC8(&drm->client.device);
	uint32_t testval, regoffset = FUNC5(encoder);
	uint32_t gpio0, gpio1, fp_htotal, fp_hsync_start, fp_hsync_end,
		fp_control, test_ctrl, dacclk, ctv_14, ctv_1c, ctv_6c;
	uint32_t sample = 0;
	int head;

#define RGB_TEST_DATA(r, g, b) (r << 0 | g << 10 | b << 20)
	testval = RGB_TEST_DATA(0x82, 0xeb, 0x82);
	if (drm->vbios.tvdactestval)
		testval = drm->vbios.tvdactestval;

	dacclk = FUNC0(dev, 0, NV_PRAMDAC_DACCLK + regoffset);
	head = (dacclk & 0x100) >> 8;

	/* Save the previous state. */
	gpio1 = FUNC6(gpio, 0, DCB_GPIO_TVDAC1, 0xff);
	gpio0 = FUNC6(gpio, 0, DCB_GPIO_TVDAC0, 0xff);
	fp_htotal = FUNC0(dev, head, NV_PRAMDAC_FP_HTOTAL);
	fp_hsync_start = FUNC0(dev, head, NV_PRAMDAC_FP_HSYNC_START);
	fp_hsync_end = FUNC0(dev, head, NV_PRAMDAC_FP_HSYNC_END);
	fp_control = FUNC0(dev, head, NV_PRAMDAC_FP_TG_CONTROL);
	test_ctrl = FUNC0(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);
	ctv_1c = FUNC0(dev, head, 0x680c1c);
	ctv_14 = FUNC0(dev, head, 0x680c14);
	ctv_6c = FUNC0(dev, head, 0x680c6c);

	/* Prepare the DAC for load detection.  */
	FUNC7(gpio, 0, DCB_GPIO_TVDAC1, 0xff, true);
	FUNC7(gpio, 0, DCB_GPIO_TVDAC0, 0xff, true);

	FUNC1(dev, head, NV_PRAMDAC_FP_HTOTAL, 1343);
	FUNC1(dev, head, NV_PRAMDAC_FP_HSYNC_START, 1047);
	FUNC1(dev, head, NV_PRAMDAC_FP_HSYNC_END, 1183);
	FUNC1(dev, head, NV_PRAMDAC_FP_TG_CONTROL,
		      NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS |
		      NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12 |
		      NV_PRAMDAC_FP_TG_CONTROL_READ_PROG |
		      NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS |
		      NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS);

	FUNC1(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset, 0);

	FUNC1(dev, 0, NV_PRAMDAC_DACCLK + regoffset,
		      (dacclk & ~0xff) | 0x22);
	FUNC3(1);
	FUNC1(dev, 0, NV_PRAMDAC_DACCLK + regoffset,
		      (dacclk & ~0xff) | 0x21);

	FUNC1(dev, head, 0x680c1c, 1 << 20);
	FUNC1(dev, head, 0x680c14, 4 << 16);

	/* Sample pin 0x4 (usually S-video luma). */
	FUNC1(dev, head, 0x680c6c, testval >> 10 & 0x3ff);
	FUNC3(20);
	sample |= FUNC0(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset)
		& 0x4 << 28;

	/* Sample the remaining pins. */
	FUNC1(dev, head, 0x680c6c, testval & 0x3ff);
	FUNC3(20);
	sample |= FUNC0(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset)
		& 0xa << 28;

	/* Restore the previous state. */
	FUNC1(dev, head, 0x680c1c, ctv_1c);
	FUNC1(dev, head, 0x680c14, ctv_14);
	FUNC1(dev, head, 0x680c6c, ctv_6c);
	FUNC1(dev, 0, NV_PRAMDAC_DACCLK + regoffset, dacclk);
	FUNC1(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset, test_ctrl);
	FUNC1(dev, head, NV_PRAMDAC_FP_TG_CONTROL, fp_control);
	FUNC1(dev, head, NV_PRAMDAC_FP_HSYNC_END, fp_hsync_end);
	FUNC1(dev, head, NV_PRAMDAC_FP_HSYNC_START, fp_hsync_start);
	FUNC1(dev, head, NV_PRAMDAC_FP_HTOTAL, fp_htotal);
	FUNC7(gpio, 0, DCB_GPIO_TVDAC1, 0xff, gpio1);
	FUNC7(gpio, 0, DCB_GPIO_TVDAC0, 0xff, gpio0);

	return sample;
}