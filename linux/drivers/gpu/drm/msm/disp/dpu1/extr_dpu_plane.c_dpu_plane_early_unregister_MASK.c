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
struct dpu_plane {int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC1 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC2(struct drm_plane *plane)
{
	struct dpu_plane *pdpu = FUNC1(plane);

	FUNC0(pdpu->debugfs_root);
}