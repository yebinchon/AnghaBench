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
struct sti_plane {int dummy; } ;
struct sti_cursor {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary; } ;

/* Variables and functions */
 int FUNC0 (struct sti_cursor*,int /*<<< orphan*/ ) ; 
 struct sti_cursor* FUNC1 (struct sti_plane*) ; 
 struct sti_plane* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC3(struct drm_plane *drm_plane)
{
	struct sti_plane *plane = FUNC2(drm_plane);
	struct sti_cursor *cursor = FUNC1(plane);

	return FUNC0(cursor, drm_plane->dev->primary);
}