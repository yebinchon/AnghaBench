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
struct kirin_plane {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kirin_plane*) ; 
 struct kirin_plane* FUNC1 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC2(struct drm_plane *plane,
				     struct drm_plane_state *old_state)
{
	struct kirin_plane *kplane = FUNC1(plane);

	FUNC0(kplane);
}