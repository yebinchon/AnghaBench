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
struct device {int dummy; } ;
struct fpga_region {scalar_t__ info; struct device dev; } ;
struct fpga_image_info {int flags; int /*<<< orphan*/  firmware_name; int /*<<< orphan*/  config_complete_timeout_us; int /*<<< orphan*/  disable_timeout_us; int /*<<< orphan*/  enable_timeout_us; struct device_node* overlay; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct fpga_image_info* FUNC0 (int) ; 
 int FPGA_MGR_ENCRYPTED_BITSTREAM ; 
 int FPGA_MGR_EXTERNAL_CONFIG ; 
 int FPGA_MGR_PARTIAL_RECONFIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char const*,int /*<<< orphan*/ ) ; 
 struct fpga_image_info* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct fpga_image_info*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fpga_image_info *FUNC9(
						struct fpga_region *region,
						struct device_node *overlay)
{
	struct device *dev = &region->dev;
	struct fpga_image_info *info;
	const char *firmware_name;
	int ret;

	if (region->info) {
		FUNC2(dev, "Region already has overlay applied.\n");
		return FUNC0(-EINVAL);
	}

	/*
	 * Reject overlay if child FPGA Regions added in the overlay have
	 * firmware-name property (would mean that an FPGA region that has
	 * not been added to the live tree yet is doing FPGA programming).
	 */
	ret = FUNC1(overlay);
	if (ret)
		return FUNC0(ret);

	info = FUNC4(dev);
	if (!info)
		return FUNC0(-ENOMEM);

	info->overlay = overlay;

	/* Read FPGA region properties from the overlay */
	if (FUNC6(overlay, "partial-fpga-config"))
		info->flags |= FPGA_MGR_PARTIAL_RECONFIG;

	if (FUNC6(overlay, "external-fpga-config"))
		info->flags |= FPGA_MGR_EXTERNAL_CONFIG;

	if (FUNC6(overlay, "encrypted-fpga-config"))
		info->flags |= FPGA_MGR_ENCRYPTED_BITSTREAM;

	if (!FUNC7(overlay, "firmware-name",
				     &firmware_name)) {
		info->firmware_name = FUNC3(dev, firmware_name,
						   GFP_KERNEL);
		if (!info->firmware_name)
			return FUNC0(-ENOMEM);
	}

	FUNC8(overlay, "region-unfreeze-timeout-us",
			     &info->enable_timeout_us);

	FUNC8(overlay, "region-freeze-timeout-us",
			     &info->disable_timeout_us);

	FUNC8(overlay, "config-complete-timeout-us",
			     &info->config_complete_timeout_us);

	/* If overlay is not programming the FPGA, don't need FPGA image info */
	if (!info->firmware_name) {
		ret = 0;
		goto ret_no_info;
	}

	/*
	 * If overlay informs us FPGA was externally programmed, specifying
	 * firmware here would be ambiguous.
	 */
	if (info->flags & FPGA_MGR_EXTERNAL_CONFIG) {
		FUNC2(dev, "error: specified firmware and external-fpga-config");
		ret = -EINVAL;
		goto ret_no_info;
	}

	return info;
ret_no_info:
	FUNC5(info);
	return FUNC0(ret);
}