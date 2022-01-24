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
struct mtk_hdmi {int /*<<< orphan*/  phy; int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_hdmi*,int) ; 
 int FUNC7 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mtk_hdmi *hdmi,
					    struct drm_display_mode *mode)
{
	int ret;

	FUNC6(hdmi, true);
	FUNC2(hdmi);
	FUNC4(hdmi);
	FUNC9(hdmi->phy);

	ret = FUNC7(hdmi,
					 mode->clock * 1000);
	if (ret) {
		FUNC0(hdmi->dev, "Failed to set vpll: %d\n", ret);
		return ret;
	}
	FUNC8(hdmi, mode);

	FUNC10(hdmi->phy);
	FUNC1(hdmi, mode);

	FUNC6(hdmi, false);
	FUNC3(hdmi);
	FUNC5(hdmi);

	return 0;
}