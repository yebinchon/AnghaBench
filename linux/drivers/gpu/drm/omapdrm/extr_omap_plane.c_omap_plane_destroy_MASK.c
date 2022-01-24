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
struct omap_plane {int /*<<< orphan*/  name; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_plane*) ; 
 struct omap_plane* FUNC3 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane)
{
	struct omap_plane *omap_plane = FUNC3(plane);

	FUNC0("%s", omap_plane->name);

	FUNC1(plane);

	FUNC2(omap_plane);
}