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
 int /*<<< orphan*/  GAM_MIXER_BCO ; 
 int /*<<< orphan*/  GAM_MIXER_BCS ; 
 int /*<<< orphan*/  FUNC0 (struct sti_mixer*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_display_mode,scalar_t__) ; 
 int FUNC2 (struct drm_display_mode,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sti_mixer *mixer,
					  struct drm_display_mode *mode)
{
	u32 ydo, xdo, yds, xds;

	ydo = FUNC1(*mode, 0);
	yds = FUNC1(*mode, mode->vdisplay - 1);
	xdo = FUNC2(*mode, 0);
	xds = FUNC2(*mode, mode->hdisplay - 1);

	FUNC0(mixer, GAM_MIXER_BCO, ydo << 16 | xdo);
	FUNC0(mixer, GAM_MIXER_BCS, yds << 16 | xds);
}