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
struct sti_mixer {int /*<<< orphan*/  dev; } ;
struct sti_compositor {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary; } ;

/* Variables and functions */
 struct sti_compositor* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_crtc*) ; 
 int FUNC2 (struct sti_compositor*,int /*<<< orphan*/ ) ; 
 struct sti_mixer* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC4(struct drm_crtc *crtc)
{
	struct sti_mixer *mixer = FUNC3(crtc);
	struct sti_compositor *compo = FUNC0(mixer->dev);

	if (FUNC1(crtc) == 0)
		return FUNC2(compo, crtc->dev->primary);

	return 0;
}