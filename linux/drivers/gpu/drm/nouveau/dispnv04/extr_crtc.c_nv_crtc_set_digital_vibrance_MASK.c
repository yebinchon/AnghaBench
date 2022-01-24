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
struct nv04_crtc_reg {int* CRTC; } ;
struct nouveau_crtc {size_t index; int saturation; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_3__ {struct nv04_crtc_reg* crtc_reg; } ;
struct TYPE_4__ {TYPE_1__ mode_reg; } ;

/* Variables and functions */
 size_t NV_CIO_CRE_5B ; 
 size_t NV_CIO_CRE_CSB ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct nv04_crtc_reg*,size_t) ; 
 struct nouveau_crtc* FUNC1 (struct drm_crtc*) ; 
 TYPE_2__* FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc, int level)
{
	struct nouveau_crtc *nv_crtc = FUNC1(crtc);
	struct drm_device *dev = crtc->dev;
	struct nv04_crtc_reg *regp = &FUNC2(dev)->mode_reg.crtc_reg[nv_crtc->index];

	regp->CRTC[NV_CIO_CRE_CSB] = nv_crtc->saturation = level;
	if (nv_crtc->saturation && FUNC3(crtc->dev)) {
		regp->CRTC[NV_CIO_CRE_CSB] = 0x80;
		regp->CRTC[NV_CIO_CRE_5B] = nv_crtc->saturation << 2;
		FUNC0(crtc, regp, NV_CIO_CRE_5B);
	}
	FUNC0(crtc, regp, NV_CIO_CRE_CSB);
}