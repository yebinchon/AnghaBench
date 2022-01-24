#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sii902x {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; TYPE_1__* i2cmux; } ;
struct edid {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  display_info; } ;
struct TYPE_2__ {int /*<<< orphan*/ * adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_BUS_FMT_RGB888_1X24 ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_DATA ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_OUTPUT_DVI ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_OUTPUT_MODE ; 
 struct sii902x* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC3 (struct edid*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct edid* FUNC5 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_connector *connector)
{
	struct sii902x *sii902x = FUNC0(connector);
	u32 bus_format = MEDIA_BUS_FMT_RGB888_1X24;
	u8 output_mode = SII902X_SYS_CTRL_OUTPUT_DVI;
	struct edid *edid;
	int num = 0, ret;

	FUNC7(&sii902x->mutex);

	edid = FUNC5(connector, sii902x->i2cmux->adapter[0]);
	FUNC2(connector, edid);
	if (edid) {
		if (FUNC3(edid))
			output_mode = SII902X_SYS_CTRL_OUTPUT_HDMI;

		num = FUNC1(connector, edid);
		FUNC6(edid);
	}

	ret = FUNC4(&connector->display_info,
					       &bus_format, 1);
	if (ret)
		goto error_out;

	ret = FUNC9(sii902x->regmap, SII902X_SYS_CTRL_DATA,
				 SII902X_SYS_CTRL_OUTPUT_MODE, output_mode);
	if (ret)
		goto error_out;

	ret = num;

error_out:
	FUNC8(&sii902x->mutex);

	return ret;
}