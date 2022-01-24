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
struct hdmi_phy {int dummy; } ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {int power_on; scalar_t__ hdcp_ctrl; int /*<<< orphan*/  pixclock; scalar_t__ hdmi_mode; struct hdmi_phy* phy; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdmi_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC7 (struct hdmi*,int) ; 
 struct hdmi_bridge* FUNC8 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC9(struct drm_bridge *bridge)
{
	struct hdmi_bridge *hdmi_bridge = FUNC8(bridge);
	struct hdmi *hdmi = hdmi_bridge->hdmi;
	struct hdmi_phy *phy = hdmi->phy;

	FUNC0("power up");

	if (!hdmi->power_on) {
		FUNC5(phy);
		FUNC6(bridge);
		hdmi->power_on = true;
		if (hdmi->hdmi_mode) {
			FUNC2(hdmi);
			FUNC1(hdmi);
		}
	}

	FUNC4(phy, hdmi->pixclock);

	FUNC7(hdmi, true);

	if (hdmi->hdcp_ctrl)
		FUNC3(hdmi->hdcp_ctrl);
}