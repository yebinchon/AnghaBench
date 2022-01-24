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
struct dpu_plane {int is_error; } ;

/* Variables and functions */
 struct dpu_plane* FUNC0 (struct drm_plane*) ; 

void FUNC1(struct drm_plane *plane, bool error)
{
	struct dpu_plane *pdpu;

	if (!plane)
		return;

	pdpu = FUNC0(plane);
	pdpu->is_error = error;
}