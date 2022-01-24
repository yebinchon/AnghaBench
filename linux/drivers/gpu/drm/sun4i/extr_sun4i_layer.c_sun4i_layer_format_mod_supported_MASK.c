#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sun4i_layer {TYPE_1__* backend; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  frontend; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sun4i_layer* FUNC1 (struct drm_plane*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct drm_plane *plane,
					     uint32_t format, uint64_t modifier)
{
	struct sun4i_layer *layer = FUNC1(plane);

	if (FUNC0(layer->backend->frontend))
		FUNC2(format, modifier);

	return FUNC2(format, modifier) ||
	       FUNC3(format, modifier);
}