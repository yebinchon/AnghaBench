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
struct drm_plane {int /*<<< orphan*/  type; TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  zpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct drm_plane *plane)
{
	FUNC0(plane);
	plane->state->zpos = FUNC1(plane->type);
}