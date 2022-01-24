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
struct mtk_hdmi {int /*<<< orphan*/  dvi_mode; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_hdmi*,int) ; 

__attribute__((used)) static void FUNC6(struct mtk_hdmi *hdmi,
					    struct drm_display_mode *mode)
{
	FUNC4(hdmi);
	FUNC1(hdmi, true);
	FUNC5(hdmi, 0xff);
	FUNC0(hdmi, hdmi->dvi_mode);
	FUNC3(hdmi, true);

	FUNC2(hdmi, mode);
}