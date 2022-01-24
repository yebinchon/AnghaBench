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
struct drm_crtc_state {int dummy; } ;
struct komeda_crtc_state {struct drm_crtc_state base; int /*<<< orphan*/  max_slave_zorder; int /*<<< orphan*/  clock_ratio; int /*<<< orphan*/  active_pipes; int /*<<< orphan*/  affected_pipes; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct komeda_crtc_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct komeda_crtc_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC3(struct drm_crtc *crtc)
{
	struct komeda_crtc_state *old = FUNC2(crtc->state);
	struct komeda_crtc_state *new;

	new = FUNC1(sizeof(*new), GFP_KERNEL);
	if (!new)
		return NULL;

	FUNC0(crtc, &new->base);

	new->affected_pipes = old->active_pipes;
	new->clock_ratio = old->clock_ratio;
	new->max_slave_zorder = old->max_slave_zorder;

	return &new->base;
}