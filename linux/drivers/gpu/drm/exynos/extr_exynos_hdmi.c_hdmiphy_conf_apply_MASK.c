#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {TYPE_1__* crtc; } ;
struct hdmi_context {int /*<<< orphan*/  dev; TYPE_5__* drv_data; TYPE_2__ encoder; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_12__ {struct drm_display_mode mode; } ;
struct TYPE_10__ {TYPE_3__* data; } ;
struct TYPE_11__ {TYPE_4__ phy_confs; } ;
struct TYPE_9__ {int /*<<< orphan*/ * conf; } ;
struct TYPE_7__ {TYPE_6__* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_context*,int) ; 
 int FUNC2 (struct hdmi_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_context*,int) ; 
 int FUNC5 (struct hdmi_context*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct hdmi_context *hdata)
{
	struct drm_display_mode *m = &hdata->encoder.crtc->state->mode;
	int ret;
	const u8 *phy_conf;

	ret = FUNC2(hdata, m->clock * 1000);
	if (ret < 0) {
		FUNC0(hdata->dev, "failed to find hdmiphy conf\n");
		return;
	}
	phy_conf = hdata->drv_data->phy_confs.data[ret].conf;

	FUNC1(hdata, false);

	FUNC3(hdata);

	FUNC4(hdata, true);
	ret = FUNC5(hdata, 0, phy_conf, 32);
	if (ret) {
		FUNC0(hdata->dev, "failed to configure hdmiphy\n");
		return;
	}
	FUNC4(hdata, false);
	FUNC1(hdata, true);
	FUNC7(10000, 12000);
	FUNC6(hdata);
}