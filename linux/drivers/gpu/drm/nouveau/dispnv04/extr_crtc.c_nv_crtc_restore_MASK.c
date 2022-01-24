#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nouveau_crtc {int index; int /*<<< orphan*/  last_dpms; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__* crtc_reg; } ;
struct TYPE_5__ {TYPE_3__ saved_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/ * CRTC; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int) ; 
 size_t NV_CIO_CRE_21 ; 
 int /*<<< orphan*/  NV_DPMS_CLEARED ; 
 struct nouveau_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,TYPE_3__*) ; 
 TYPE_2__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct nouveau_crtc *nv_crtc = FUNC1(crtc);
	struct drm_device *dev = crtc->dev;
	int head = nv_crtc->index;
	uint8_t saved_cr21 = FUNC3(dev)->saved_reg.crtc_reg[head].CRTC[NV_CIO_CRE_21];

	if (FUNC5(crtc->dev))
		FUNC0(crtc->dev, head);

	FUNC2(crtc->dev, head, &FUNC3(dev)->saved_reg);
	FUNC4(crtc->dev, head, saved_cr21);

	nv_crtc->last_dpms = NV_DPMS_CLEARED;
}