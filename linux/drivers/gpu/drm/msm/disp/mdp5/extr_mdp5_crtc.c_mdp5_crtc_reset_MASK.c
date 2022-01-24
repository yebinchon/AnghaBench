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
struct mdp5_crtc_state {int /*<<< orphan*/  base; } ;
struct drm_crtc {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct mdp5_crtc_state *mdp5_cstate =
		FUNC2(sizeof(*mdp5_cstate), GFP_KERNEL);

	if (crtc->state)
		FUNC3(crtc, crtc->state);

	FUNC0(crtc, &mdp5_cstate->base);

	FUNC1(crtc);
}