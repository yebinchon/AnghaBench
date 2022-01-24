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
struct imx_ldb_channel {int mode_valid; int /*<<< orphan*/  bus_flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  panel; int /*<<< orphan*/  edid_len; int /*<<< orphan*/  edid; int /*<<< orphan*/  ddc; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OF_USE_NATIVE_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
		struct imx_ldb_channel *channel, struct device_node *child)
{
	struct device_node *ddc_node;
	const u8 *edidp;
	int ret;

	ddc_node = FUNC7(child, "ddc-i2c-bus", 0);
	if (ddc_node) {
		channel->ddc = FUNC3(ddc_node);
		FUNC6(ddc_node);
		if (!channel->ddc) {
			FUNC1(dev, "failed to get ddc i2c adapter\n");
			return -EPROBE_DEFER;
		}
	}

	if (!channel->ddc) {
		/* if no DDC available, fallback to hardcoded EDID */
		FUNC0(dev, "no ddc available\n");

		edidp = FUNC5(child, "edid",
					&channel->edid_len);
		if (edidp) {
			channel->edid = FUNC2(edidp,
						channel->edid_len,
						GFP_KERNEL);
		} else if (!channel->panel) {
			/* fallback to display-timings node */
			ret = FUNC4(child,
						      &channel->mode,
						      &channel->bus_flags,
						      OF_USE_NATIVE_MODE);
			if (!ret)
				channel->mode_valid = 1;
		}
	}
	return 0;
}