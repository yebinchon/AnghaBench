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
struct TYPE_2__ {unsigned int bo_count; } ;
struct vc4_hang_state {int /*<<< orphan*/ * bo; TYPE_1__ user_state; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vc4_hang_state*) ; 

__attribute__((used)) static void
FUNC2(struct drm_device *dev, struct vc4_hang_state *state)
{
	unsigned int i;

	for (i = 0; i < state->user_state.bo_count; i++)
		FUNC0(state->bo[i]);

	FUNC1(state);
}