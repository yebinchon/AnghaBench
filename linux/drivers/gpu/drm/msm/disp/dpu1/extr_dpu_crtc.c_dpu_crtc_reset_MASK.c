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
struct drm_crtc {scalar_t__ state; } ;
struct dpu_crtc_state {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,scalar_t__) ; 
 struct dpu_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct dpu_crtc_state *cstate = FUNC2(sizeof(*cstate), GFP_KERNEL);

	if (crtc->state)
		FUNC1(crtc, crtc->state);

	FUNC0(crtc, &cstate->base);
}