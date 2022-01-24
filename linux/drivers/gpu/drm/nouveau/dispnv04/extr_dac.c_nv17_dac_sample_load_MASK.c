#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
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

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_TVDAC0 ; 
 int /*<<< orphan*/  DCB_GPIO_TVDAC1 ; 
 scalar_t__ DCB_OUTPUT_TV ; 
 int FUNC0 (struct drm_device*,int,scalar_t__) ; 
 int FUNC1 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  NV_CIO_CRE_RPC1_INDEX ; 
 scalar_t__ NV_DEVICE_INFO_V0_CURIE ; 
 int /*<<< orphan*/  NV_PBUS_POWERCTRL_2 ; 
 int /*<<< orphan*/  NV_PBUS_POWERCTRL_4 ; 
 scalar_t__ NV_PRAMDAC_DACCLK ; 
 scalar_t__ NV_PRAMDAC_TESTPOINT_DATA ; 
 int NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK ; 
 scalar_t__ NV_PRAMDAC_TEST_CONTROL ; 
 int NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF ; 
 int NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct nouveau_drm* FUNC5 (struct drm_device*) ; 
 TYPE_5__* FUNC6 (struct drm_encoder*) ; 
 int FUNC7 (struct drm_encoder*) ; 
 int FUNC8 (struct nvif_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nvif_object*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct nvkm_gpio* FUNC12 (TYPE_4__*) ; 

uint32_t FUNC13(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct nouveau_drm *drm = FUNC5(dev);
	struct nvif_object *device = &FUNC5(dev)->client.device.object;
	struct nvkm_gpio *gpio = FUNC12(&drm->client.device);
	struct dcb_output *dcb = FUNC6(encoder)->dcb;
	uint32_t sample, testval, regoffset = FUNC7(encoder);
	uint32_t saved_powerctrl_2 = 0, saved_powerctrl_4 = 0, saved_routput,
		saved_rtest_ctrl, saved_gpio0 = 0, saved_gpio1 = 0, temp, routput;
	int head;

#define RGB_TEST_DATA(r, g, b) (r << 0 | g << 10 | b << 20)
	if (dcb->type == DCB_OUTPUT_TV) {
		testval = RGB_TEST_DATA(0xa0, 0xa0, 0xa0);

		if (drm->vbios.tvdactestval)
			testval = drm->vbios.tvdactestval;
	} else {
		testval = RGB_TEST_DATA(0x140, 0x140, 0x140); /* 0x94050140 */

		if (drm->vbios.dactestval)
			testval = drm->vbios.dactestval;
	}

	saved_rtest_ctrl = FUNC0(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);
	FUNC2(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset,
		      saved_rtest_ctrl & ~NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF);

	saved_powerctrl_2 = FUNC8(device, NV_PBUS_POWERCTRL_2);

	FUNC9(device, NV_PBUS_POWERCTRL_2, saved_powerctrl_2 & 0xd7ffffff);
	if (regoffset == 0x68) {
		saved_powerctrl_4 = FUNC8(device, NV_PBUS_POWERCTRL_4);
		FUNC9(device, NV_PBUS_POWERCTRL_4, saved_powerctrl_4 & 0xffffffcf);
	}

	if (gpio) {
		saved_gpio1 = FUNC10(gpio, 0, DCB_GPIO_TVDAC1, 0xff);
		saved_gpio0 = FUNC10(gpio, 0, DCB_GPIO_TVDAC0, 0xff);
		FUNC11(gpio, 0, DCB_GPIO_TVDAC1, 0xff, dcb->type == DCB_OUTPUT_TV);
		FUNC11(gpio, 0, DCB_GPIO_TVDAC0, 0xff, dcb->type == DCB_OUTPUT_TV);
	}

	FUNC4(4);

	saved_routput = FUNC0(dev, 0, NV_PRAMDAC_DACCLK + regoffset);
	head = (saved_routput & 0x100) >> 8;

	/* if there's a spare crtc, using it will minimise flicker */
	if (!(FUNC1(dev, head, NV_CIO_CRE_RPC1_INDEX) & 0xC0))
		head ^= 1;

	/* nv driver and nv31 use 0xfffffeee, nv34 and 6600 use 0xfffffece */
	routput = (saved_routput & 0xfffffece) | head << 8;

	if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_CURIE) {
		if (dcb->type == DCB_OUTPUT_TV)
			routput |= 0x1a << 16;
		else
			routput &= ~(0x1a << 16);
	}

	FUNC2(dev, 0, NV_PRAMDAC_DACCLK + regoffset, routput);
	FUNC4(1);

	temp = FUNC0(dev, 0, NV_PRAMDAC_DACCLK + regoffset);
	FUNC2(dev, 0, NV_PRAMDAC_DACCLK + regoffset, temp | 1);

	FUNC2(dev, head, NV_PRAMDAC_TESTPOINT_DATA,
		      NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK | testval);
	temp = FUNC0(dev, head, NV_PRAMDAC_TEST_CONTROL);
	FUNC2(dev, head, NV_PRAMDAC_TEST_CONTROL,
		      temp | NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED);
	FUNC4(5);

	sample = FUNC0(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);
	/* do it again just in case it's a residual current */
	sample &= FUNC0(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset);

	temp = FUNC0(dev, head, NV_PRAMDAC_TEST_CONTROL);
	FUNC2(dev, head, NV_PRAMDAC_TEST_CONTROL,
		      temp & ~NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED);
	FUNC2(dev, head, NV_PRAMDAC_TESTPOINT_DATA, 0);

	/* bios does something more complex for restoring, but I think this is good enough */
	FUNC2(dev, 0, NV_PRAMDAC_DACCLK + regoffset, saved_routput);
	FUNC2(dev, 0, NV_PRAMDAC_TEST_CONTROL + regoffset, saved_rtest_ctrl);
	if (regoffset == 0x68)
		FUNC9(device, NV_PBUS_POWERCTRL_4, saved_powerctrl_4);
	FUNC9(device, NV_PBUS_POWERCTRL_2, saved_powerctrl_2);

	if (gpio) {
		FUNC11(gpio, 0, DCB_GPIO_TVDAC1, 0xff, saved_gpio1);
		FUNC11(gpio, 0, DCB_GPIO_TVDAC0, 0xff, saved_gpio0);
	}

	return sample;
}