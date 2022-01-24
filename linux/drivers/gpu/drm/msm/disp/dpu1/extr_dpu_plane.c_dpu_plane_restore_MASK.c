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
struct drm_plane {int /*<<< orphan*/  state; } ;
struct dpu_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC3 (struct drm_plane*) ; 

void FUNC4(struct drm_plane *plane)
{
	struct dpu_plane *pdpu;

	if (!plane || !plane->state) {
		FUNC1("invalid plane\n");
		return;
	}

	pdpu = FUNC3(plane);

	FUNC0(pdpu, "\n");

	/* last plane state is same as current state */
	FUNC2(plane, plane->state);
}