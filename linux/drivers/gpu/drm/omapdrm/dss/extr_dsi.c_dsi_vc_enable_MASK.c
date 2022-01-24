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
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dsi_data *dsi, int channel, bool enable)
{
	FUNC1("dsi_vc_enable channel %d, enable %d\n",
			channel, enable);

	enable = enable ? 1 : 0;

	FUNC3(dsi, FUNC0(channel), enable, 0, 0);

	if (!FUNC4(dsi, FUNC0(channel), 0, enable)) {
		FUNC2("Failed to set dsi_vc_enable to %d\n", enable);
		return -EIO;
	}

	return 0;
}