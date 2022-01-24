#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_plane_state {int scaler_id; int /*<<< orphan*/  base; } ;
struct intel_plane {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct intel_plane* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_plane*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct intel_plane *FUNC4(void)
{
	struct intel_plane_state *plane_state;
	struct intel_plane *plane;

	plane = FUNC3(sizeof(*plane), GFP_KERNEL);
	if (!plane)
		return FUNC0(-ENOMEM);

	plane_state = FUNC3(sizeof(*plane_state), GFP_KERNEL);
	if (!plane_state) {
		FUNC2(plane);
		return FUNC0(-ENOMEM);
	}

	FUNC1(&plane->base, &plane_state->base);
	plane_state->scaler_id = -1;

	return plane;
}