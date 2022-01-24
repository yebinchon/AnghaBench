#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {TYPE_2__* fixed_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  panel_orientation; } ;
struct TYPE_11__ {TYPE_1__ display_info; TYPE_4__* state; } ;
struct intel_connector {TYPE_3__ panel; TYPE_5__ base; } ;
struct TYPE_10__ {int /*<<< orphan*/  scaling_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_ASPECT ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_CENTER ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_FULLSCREEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_connector*) ; 

__attribute__((used)) static void FUNC4(struct intel_connector *connector)
{
	u32 allowed_scalers;

	allowed_scalers = FUNC0(DRM_MODE_SCALE_ASPECT) |
			   FUNC0(DRM_MODE_SCALE_FULLSCREEN) |
			   FUNC0(DRM_MODE_SCALE_CENTER);

	FUNC1(&connector->base,
						   allowed_scalers);

	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;

	connector->base.display_info.panel_orientation =
			FUNC3(connector);
	FUNC2(&connector->base,
				connector->panel.fixed_mode->hdisplay,
				connector->panel.fixed_mode->vdisplay);
}