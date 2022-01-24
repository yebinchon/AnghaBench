#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omap_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	if (crtc->state)
		FUNC0(crtc->state);

	FUNC1(crtc->state);
	crtc->state = FUNC2(sizeof(struct omap_crtc_state), GFP_KERNEL);

	if (crtc->state)
		crtc->state->crtc = crtc;
}