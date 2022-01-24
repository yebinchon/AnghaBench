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
typedef  int /*<<< orphan*/  u8 ;
struct sun4i_hdmi {scalar_t__ base; int /*<<< orphan*/  connector; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,struct drm_display_mode*) ; 
 int FUNC3 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct sun4i_hdmi *hdmi,
					   struct drm_display_mode *mode)
{
	struct hdmi_avi_infoframe frame;
	u8 buffer[17];
	int i, ret;

	ret = FUNC2(&frame,
						       &hdmi->connector, mode);
	if (ret < 0) {
		FUNC0("Failed to get infoframes from mode\n");
		return ret;
	}

	ret = FUNC3(&frame, buffer, sizeof(buffer));
	if (ret < 0) {
		FUNC0("Failed to pack infoframes\n");
		return ret;
	}

	for (i = 0; i < sizeof(buffer); i++)
		FUNC4(buffer[i], hdmi->base + FUNC1(i));

	return 0;
}