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
struct TYPE_2__ {scalar_t__ flags; int /*<<< orphan*/  func; } ;
struct wait_rps_boost {TYPE_1__ wait; struct drm_crtc* crtc; int /*<<< orphan*/  request; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  do_rps_boost ; 
 scalar_t__ FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 struct wait_rps_boost* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_crtc *crtc,
				       struct dma_fence *fence)
{
	struct wait_rps_boost *wait;

	if (!FUNC3(fence))
		return;

	if (FUNC0(FUNC8(crtc->dev)) < 6)
		return;

	if (FUNC4(crtc))
		return;

	wait = FUNC7(sizeof(*wait), GFP_KERNEL);
	if (!wait) {
		FUNC5(crtc);
		return;
	}

	wait->request = FUNC9(FUNC2(fence));
	wait->crtc = crtc;

	wait->wait.func = do_rps_boost;
	wait->wait.flags = 0;

	FUNC1(FUNC6(crtc), &wait->wait);
}