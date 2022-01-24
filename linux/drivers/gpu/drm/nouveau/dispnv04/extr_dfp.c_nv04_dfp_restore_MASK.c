#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int head; } ;
struct nouveau_encoder {int /*<<< orphan*/  last_dpms; TYPE_5__* dcb; TYPE_1__ restore; } ;
struct nouveau_connector {TYPE_2__* native_mode; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_11__ {TYPE_3__* crtc_reg; } ;
struct TYPE_13__ {TYPE_4__ saved_reg; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_10__ {int /*<<< orphan*/  pllvals; } ;
struct TYPE_9__ {int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 scalar_t__ DCB_OUTPUT_LVDS ; 
 scalar_t__ DCB_OUTPUT_TMDS ; 
 int /*<<< orphan*/  LVDS_PANEL_ON ; 
 int /*<<< orphan*/  NV_DPMS_CLEARED ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nouveau_encoder* FUNC1 (struct drm_encoder*) ; 
 struct nouveau_connector* FUNC2 (struct nouveau_encoder*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,TYPE_5__*,int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder)
{
	struct nouveau_encoder *nv_encoder = FUNC1(encoder);
	struct drm_device *dev = encoder->dev;
	int head = nv_encoder->restore.head;

	if (nv_encoder->dcb->type == DCB_OUTPUT_LVDS) {
		struct nouveau_connector *connector =
			FUNC2(nv_encoder);

		if (connector && connector->native_mode)
			FUNC0(dev, nv_encoder->dcb, head,
					 LVDS_PANEL_ON,
					 connector->native_mode->clock);

	} else if (nv_encoder->dcb->type == DCB_OUTPUT_TMDS) {
		int clock = FUNC3
					(&FUNC4(dev)->saved_reg.crtc_reg[head].pllvals);

		FUNC5(dev, nv_encoder->dcb, head, clock);
	}

	nv_encoder->last_dpms = NV_DPMS_CLEARED;
}