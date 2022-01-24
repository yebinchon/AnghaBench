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
struct omap_dss_device {int dummy; } ;
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSS_DSI_CONTENT_DCS ; 
 int EIO ; 
 int FUNC1 (struct dsi_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dsi_data*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_dss_device*,int) ; 
 struct dsi_data* FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC5(struct omap_dss_device *dssdev, int channel, u8 dcs_cmd,
		u8 *buf, int buflen)
{
	struct dsi_data *dsi = FUNC4(dssdev);
	int r;

	r = FUNC1(dsi, channel, dcs_cmd);
	if (r)
		goto err;

	r = FUNC3(dssdev, channel);
	if (r)
		goto err;

	r = FUNC2(dsi, channel, buf, buflen,
		DSS_DSI_CONTENT_DCS);
	if (r < 0)
		goto err;

	if (r != buflen) {
		r = -EIO;
		goto err;
	}

	return 0;
err:
	FUNC0("dsi_vc_dcs_read(ch %d, cmd 0x%02x) failed\n", channel, dcs_cmd);
	return r;
}