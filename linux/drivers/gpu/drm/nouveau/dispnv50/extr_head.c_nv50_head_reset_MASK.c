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
struct drm_crtc {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 struct nv50_head_atom* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct drm_crtc *crtc)
{
	struct nv50_head_atom *asyh;

	if (FUNC0(!(asyh = FUNC2(sizeof(*asyh), GFP_KERNEL))))
		return;

	if (crtc->state)
		FUNC3(crtc, crtc->state);

	FUNC1(crtc, &asyh->state);
}