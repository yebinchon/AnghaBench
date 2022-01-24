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
struct zx_hdmi {scalar_t__ sink_is_hdmi; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 struct zx_hdmi* FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct zx_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct zx_hdmi*,struct drm_display_mode*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder,
				     struct drm_display_mode *mode,
				     struct drm_display_mode *adj_mode)
{
	struct zx_hdmi *hdmi = FUNC0(encoder);

	if (hdmi->sink_is_hdmi) {
		FUNC1(hdmi, mode);
		FUNC2(hdmi, mode);
	}
}