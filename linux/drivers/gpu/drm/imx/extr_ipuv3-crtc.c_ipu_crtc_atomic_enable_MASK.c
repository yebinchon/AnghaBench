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
struct ipu_soc {int dummy; } ;
struct ipu_crtc {int /*<<< orphan*/  di; int /*<<< orphan*/  dc; TYPE_1__* dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct ipu_soc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_soc*) ; 
 struct ipu_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_state)
{
	struct ipu_crtc *ipu_crtc = FUNC5(crtc);
	struct ipu_soc *ipu = FUNC0(ipu_crtc->dev->parent);

	FUNC4(ipu);
	FUNC1(ipu);
	FUNC2(ipu_crtc->dc);
	FUNC3(ipu_crtc->di);
}