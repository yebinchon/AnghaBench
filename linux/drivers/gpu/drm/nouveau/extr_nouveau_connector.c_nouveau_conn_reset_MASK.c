#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mode; } ;
struct TYPE_13__ {int /*<<< orphan*/  mode; TYPE_2__ underscan; } ;
struct TYPE_10__ {int color_vibrance; int vibrant_hue; } ;
struct TYPE_8__ {int /*<<< orphan*/  depth; int /*<<< orphan*/  mode; } ;
struct nouveau_conn_atom {TYPE_6__ scaler; TYPE_3__ procamp; TYPE_1__ dither; int /*<<< orphan*/  state; } ;
struct drm_connector {int connector_type; int /*<<< orphan*/  dev; scalar_t__ state; } ;
struct TYPE_11__ {scalar_t__ oclass; } ;
struct TYPE_12__ {TYPE_4__ object; } ;
struct TYPE_14__ {TYPE_5__ disp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DITHERING_DEPTH_AUTO ; 
 int /*<<< orphan*/  DITHERING_MODE_AUTO ; 
#define  DRM_MODE_CONNECTOR_LVDS 128 
 int /*<<< orphan*/  DRM_MODE_SCALE_FULLSCREEN ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NV50_DISP ; 
 int /*<<< orphan*/  UNDERSCAN_OFF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct nouveau_conn_atom* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,scalar_t__) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct drm_connector *connector)
{
	struct nouveau_conn_atom *asyc;

	if (FUNC0(!(asyc = FUNC2(sizeof(*asyc), GFP_KERNEL))))
		return;

	if (connector->state)
		FUNC3(connector, connector->state);
	FUNC1(connector, &asyc->state);
	asyc->dither.mode = DITHERING_MODE_AUTO;
	asyc->dither.depth = DITHERING_DEPTH_AUTO;
	asyc->scaler.mode = DRM_MODE_SCALE_NONE;
	asyc->scaler.underscan.mode = UNDERSCAN_OFF;
	asyc->procamp.color_vibrance = 150;
	asyc->procamp.vibrant_hue = 90;

	if (FUNC4(connector->dev)->disp.object.oclass < NV50_DISP) {
		switch (connector->connector_type) {
		case DRM_MODE_CONNECTOR_LVDS:
			/* See note in nouveau_conn_atomic_set_property(). */
			asyc->scaler.mode = DRM_MODE_SCALE_FULLSCREEN;
			break;
		default:
			break;
		}
	}
}