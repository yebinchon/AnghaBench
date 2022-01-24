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
struct vc4_crtc {int /*<<< orphan*/  base; int /*<<< orphan*/  t_vblank; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vc4_crtc*) ; 

void FUNC3(struct vc4_crtc *crtc)
{
	crtc->t_vblank = FUNC1();
	FUNC0(&crtc->base);
	FUNC2(crtc);
}