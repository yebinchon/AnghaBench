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
typedef  enum dss_dsi_content_type { ____Placeholder_dss_dsi_content_type } dss_dsi_content_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct dsi_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int) ; 
 int FUNC4 (struct omap_dss_device*,int) ; 
 int FUNC5 (struct dsi_data*,int,int /*<<< orphan*/ *,int,int) ; 
 struct dsi_data* FUNC6 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC7(struct omap_dss_device *dssdev,
			       int channel, u8 *data, int len,
			       enum dss_dsi_content_type type)
{
	struct dsi_data *dsi = FUNC6(dssdev);
	int r;

	r = FUNC5(dsi, channel, data, len, type);
	if (r)
		goto err;

	r = FUNC4(dssdev, channel);
	if (r)
		goto err;

	/* RX_FIFO_NOT_EMPTY */
	if (FUNC2(dsi, FUNC0(channel), 20, 20)) {
		FUNC1("rx fifo not empty after write, dumping data:\n");
		FUNC3(dsi, channel);
		r = -EIO;
		goto err;
	}

	return 0;
err:
	FUNC1("dsi_vc_write_common(ch %d, cmd 0x%02x, len %d) failed\n",
			channel, data[0], len);
	return r;
}