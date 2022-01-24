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
struct nv50_head_atom {int /*<<< orphan*/  state; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_head_atom*) ; 
 struct nv50_head_atom* FUNC2 (struct drm_crtc_state*) ; 

__attribute__((used)) static void
FUNC3(struct drm_crtc *crtc,
			       struct drm_crtc_state *state)
{
	struct nv50_head_atom *asyh = FUNC2(state);
	FUNC0(&asyh->state);
	FUNC1(asyh);
}