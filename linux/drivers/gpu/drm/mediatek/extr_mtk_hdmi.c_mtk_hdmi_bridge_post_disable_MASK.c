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
struct mtk_hdmi {int powered; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct mtk_hdmi* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hdmi*,int) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct mtk_hdmi *hdmi = FUNC0(bridge);

	if (!hdmi->powered)
		return;

	FUNC1(hdmi, true);
	FUNC2(hdmi, false);

	hdmi->powered = false;
}