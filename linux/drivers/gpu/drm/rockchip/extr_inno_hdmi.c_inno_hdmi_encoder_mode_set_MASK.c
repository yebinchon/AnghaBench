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
struct inno_hdmi {int /*<<< orphan*/  previous_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inno_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_display_mode*,int) ; 
 struct inno_hdmi* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder,
				       struct drm_display_mode *mode,
				       struct drm_display_mode *adj_mode)
{
	struct inno_hdmi *hdmi = FUNC2(encoder);

	FUNC0(hdmi, adj_mode);

	/* Store the display mode for plugin/DPMS poweron events */
	FUNC1(&hdmi->previous_mode, adj_mode, sizeof(hdmi->previous_mode));
}