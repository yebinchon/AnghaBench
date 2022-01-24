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
struct sti_mixer {scalar_t__ id; int /*<<< orphan*/  status; struct device* dev; } ;
struct sti_compositor {int /*<<< orphan*/  clk_compo_aux; int /*<<< orphan*/  clk_pix_aux; int /*<<< orphan*/  clk_compo_main; int /*<<< orphan*/  clk_pix_main; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_1__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STI_MIXER_DISABLED ; 
 scalar_t__ STI_MIXER_MAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sti_compositor* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_mixer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_mixer*) ; 
 struct sti_mixer* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc)
{
	struct sti_mixer *mixer = FUNC6(crtc);
	struct device *dev = mixer->dev;
	struct sti_compositor *compo = FUNC2(dev);

	FUNC0("CRTC:%d (%s)\n", crtc->base.id, FUNC5(mixer));

	/* Disable Background */
	FUNC4(mixer, false);

	FUNC3(crtc);

	/* Disable pixel clock and compo IP clocks */
	if (mixer->id == STI_MIXER_MAIN) {
		FUNC1(compo->clk_pix_main);
		FUNC1(compo->clk_compo_main);
	} else {
		FUNC1(compo->clk_pix_aux);
		FUNC1(compo->clk_compo_aux);
	}

	mixer->status = STI_MIXER_DISABLED;
}