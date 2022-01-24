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
typedef  int u32 ;
struct sti_mixer {int dummy; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  GAM_MIXER_AVO ; 
 int /*<<< orphan*/  GAM_MIXER_AVS ; 
 int /*<<< orphan*/  bkg_color ; 
 int /*<<< orphan*/  FUNC1 (struct sti_mixer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_mixer*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_mixer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_mixer*) ; 
 int FUNC6 (struct drm_display_mode,scalar_t__) ; 
 int FUNC7 (struct drm_display_mode,scalar_t__) ; 

int FUNC8(struct sti_mixer *mixer,
				struct drm_display_mode *mode)
{
	u32 ydo, xdo, yds, xds;

	ydo = FUNC6(*mode, 0);
	yds = FUNC6(*mode, mode->vdisplay - 1);
	xdo = FUNC7(*mode, 0);
	xds = FUNC7(*mode, mode->hdisplay - 1);

	FUNC0("%s active video area xdo:%d ydo:%d xds:%d yds:%d\n",
			 FUNC5(mixer), xdo, ydo, xds, yds);
	FUNC1(mixer, GAM_MIXER_AVO, ydo << 16 | xdo);
	FUNC1(mixer, GAM_MIXER_AVS, yds << 16 | xds);

	FUNC3(mixer, bkg_color);

	FUNC2(mixer, mode);
	FUNC4(mixer, true);
	return 0;
}