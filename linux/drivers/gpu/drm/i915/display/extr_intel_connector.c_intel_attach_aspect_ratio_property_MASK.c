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
struct drm_connector {TYPE_2__* dev; int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int /*<<< orphan*/  aspect_ratio_property; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_PICTURE_ASPECT_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct drm_connector *connector)
{
	if (!FUNC0(connector->dev))
		FUNC1(&connector->base,
			connector->dev->mode_config.aspect_ratio_property,
			DRM_MODE_PICTURE_ASPECT_NONE);
}