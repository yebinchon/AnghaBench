#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvkm_gpio {int dummy; } ;
struct nv17_tv_state {int ptv_200; } ;
struct nv17_tv_norm_params {scalar_t__ kind; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_8__ {int last_dpms; TYPE_2__* dcb; } ;
struct TYPE_7__ {struct nv17_tv_state state; } ;
struct TYPE_6__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ CTV_ENC_MODE ; 
 int /*<<< orphan*/  DCB_GPIO_TVDAC0 ; 
 int /*<<< orphan*/  DCB_GPIO_TVDAC1 ; 
 int DRM_MODE_DPMS_OFF ; 
 int DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int,int /*<<< orphan*/ ) ; 
 struct nv17_tv_norm_params* FUNC1 (struct drm_encoder*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 TYPE_4__* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct nv17_tv_state*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct nvkm_gpio* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (struct drm_encoder*) ; 

__attribute__((used)) static void  FUNC10(struct drm_encoder *encoder, int mode)
{
	struct drm_device *dev = encoder->dev;
	struct nouveau_drm *drm = FUNC2(dev);
	struct nvkm_gpio *gpio = FUNC8(&drm->client.device);
	struct nv17_tv_state *regs = &FUNC9(encoder)->state;
	struct nv17_tv_norm_params *tv_norm = FUNC1(encoder);

	if (FUNC3(encoder)->last_dpms == mode)
		return;
	FUNC3(encoder)->last_dpms = mode;

	FUNC0(drm, "Setting dpms mode %d on TV encoder (output %d)\n",
		 mode, FUNC3(encoder)->dcb->index);

	regs->ptv_200 &= ~1;

	if (tv_norm->kind == CTV_ENC_MODE) {
		FUNC5(encoder, mode);

	} else {
		FUNC5(encoder, DRM_MODE_DPMS_OFF);

		if (mode == DRM_MODE_DPMS_ON)
			regs->ptv_200 |= 1;
	}

	FUNC6(dev, regs, 200);

	FUNC7(gpio, 0, DCB_GPIO_TVDAC1, 0xff, mode == DRM_MODE_DPMS_ON);
	FUNC7(gpio, 0, DCB_GPIO_TVDAC0, 0xff, mode == DRM_MODE_DPMS_ON);

	FUNC4(encoder, mode == DRM_MODE_DPMS_ON);
}