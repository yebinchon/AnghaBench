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
struct drm_crtc {int dummy; } ;
struct dpu_crtc {int /*<<< orphan*/  frame_done_comp; int /*<<< orphan*/  frame_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DPU_CRTC_FRAME_DONE_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dpu_crtc* FUNC6 (struct drm_crtc*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_crtc *crtc)
{
	struct dpu_crtc *dpu_crtc = FUNC6(crtc);
	int ret, rc = 0;

	if (!FUNC4(&dpu_crtc->frame_pending)) {
		FUNC2("no frames pending\n");
		return 0;
	}

	FUNC0("frame done completion wait");
	ret = FUNC7(&dpu_crtc->frame_done_comp,
			FUNC5(DPU_CRTC_FRAME_DONE_TIMEOUT_MS));
	if (!ret) {
		FUNC3("frame done wait timed out, ret:%d\n", ret);
		rc = -ETIMEDOUT;
	}
	FUNC1("frame done completion wait");

	return rc;
}