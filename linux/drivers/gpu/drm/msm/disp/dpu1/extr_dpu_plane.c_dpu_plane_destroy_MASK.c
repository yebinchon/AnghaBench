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
struct drm_plane {int dummy; } ;
struct dpu_plane {int /*<<< orphan*/  pipe_hw; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  DPU_PLANE_QOS_PANIC_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_plane*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dpu_plane* FUNC6 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC7(struct drm_plane *plane)
{
	struct dpu_plane *pdpu = plane ? FUNC6(plane) : NULL;

	FUNC0(pdpu, "\n");

	if (pdpu) {
		FUNC1(plane, false, DPU_PLANE_QOS_PANIC_CTRL);

		FUNC5(&pdpu->lock);

		/* this will destroy the states as well */
		FUNC3(plane);

		FUNC2(pdpu->pipe_hw);

		FUNC4(pdpu);
	}
}