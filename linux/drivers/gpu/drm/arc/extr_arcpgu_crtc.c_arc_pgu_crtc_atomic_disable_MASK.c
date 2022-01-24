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
struct drm_crtc {int dummy; } ;
struct arcpgu_drm_private {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int ARCPGU_CTRL_ENABLE_MASK ; 
 int /*<<< orphan*/  ARCPGU_REG_CTRL ; 
 int FUNC0 (struct arcpgu_drm_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arcpgu_drm_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct arcpgu_drm_private* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc,
					struct drm_crtc_state *old_state)
{
	struct arcpgu_drm_private *arcpgu = FUNC3(crtc);

	FUNC2(arcpgu->clk);
	FUNC1(arcpgu, ARCPGU_REG_CTRL,
			      FUNC0(arcpgu, ARCPGU_REG_CTRL) &
			      ~ARCPGU_CTRL_ENABLE_MASK);
}