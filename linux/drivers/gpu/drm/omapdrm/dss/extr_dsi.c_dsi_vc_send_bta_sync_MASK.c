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
typedef  scalar_t__ u32 ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSI_IRQ_ERROR_MASK ; 
 int /*<<< orphan*/  DSI_VC_IRQ_BTA ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EIO ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  dsi_completion_handler ; 
 scalar_t__ FUNC2 (struct dsi_data*) ; 
 int FUNC3 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dsi_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct dsi_data* FUNC9 (struct omap_dss_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct omap_dss_device *dssdev, int channel)
{
	struct dsi_data *dsi = FUNC9(dssdev);
	FUNC0(completion);
	int r = 0;
	u32 err;

	r = FUNC4(dsi, channel, dsi_completion_handler,
			&completion, DSI_VC_IRQ_BTA);
	if (r)
		goto err0;

	r = FUNC3(dsi, dsi_completion_handler, &completion,
			DSI_IRQ_ERROR_MASK);
	if (r)
		goto err1;

	r = FUNC7(dsi, channel);
	if (r)
		goto err2;

	if (FUNC10(&completion,
				FUNC8(500)) == 0) {
		FUNC1("Failed to receive BTA\n");
		r = -EIO;
		goto err2;
	}

	err = FUNC2(dsi);
	if (err) {
		FUNC1("Error while sending BTA: %x\n", err);
		r = -EIO;
		goto err2;
	}
err2:
	FUNC5(dsi, dsi_completion_handler, &completion,
			DSI_IRQ_ERROR_MASK);
err1:
	FUNC6(dsi, channel, dsi_completion_handler,
			&completion, DSI_VC_IRQ_BTA);
err0:
	return r;
}