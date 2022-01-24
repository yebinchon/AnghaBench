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
struct drm_atomic_state {int /*<<< orphan*/  private_objs; int /*<<< orphan*/  planes; int /*<<< orphan*/  crtcs; int /*<<< orphan*/  connectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct drm_atomic_state *state)
{
	FUNC0(state->connectors);
	FUNC0(state->crtcs);
	FUNC0(state->planes);
	FUNC0(state->private_objs);
}