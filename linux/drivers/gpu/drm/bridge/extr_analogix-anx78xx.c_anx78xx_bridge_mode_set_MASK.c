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
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct anx78xx {int /*<<< orphan*/  lock; int /*<<< orphan*/  connector; int /*<<< orphan*/  powered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct anx78xx*,struct hdmi_avi_infoframe*) ; 
 struct anx78xx* FUNC3 (struct drm_bridge*) ; 
 int FUNC4 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge,
				const struct drm_display_mode *mode,
				const struct drm_display_mode *adjusted_mode)
{
	struct anx78xx *anx78xx = FUNC3(bridge);
	struct hdmi_avi_infoframe frame;
	int err;

	if (FUNC1(!anx78xx->powered))
		return;

	FUNC5(&anx78xx->lock);

	err = FUNC4(&frame,
						       &anx78xx->connector,
						       adjusted_mode);
	if (err) {
		FUNC0("Failed to setup AVI infoframe: %d\n", err);
		goto unlock;
	}

	err = FUNC2(anx78xx, &frame);
	if (err)
		FUNC0("Failed to send AVI infoframe: %d\n", err);

unlock:
	FUNC6(&anx78xx->lock);
}