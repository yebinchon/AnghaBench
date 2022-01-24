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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_dc {int /*<<< orphan*/  base; scalar_t__ syncpt; TYPE_1__* soc; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_nvdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct tegra_dc* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static u32 FUNC3(struct drm_crtc *crtc)
{
	struct tegra_dc *dc = FUNC2(crtc);

	/* XXX vblank syncpoints don't work with nvdisplay yet */
	if (dc->syncpt && !dc->soc->has_nvdisplay)
		return FUNC1(dc->syncpt);

	/* fallback to software emulated VBLANK counter */
	return (u32)FUNC0(&dc->base);
}