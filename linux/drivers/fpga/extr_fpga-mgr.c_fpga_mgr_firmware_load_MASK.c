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
struct fpga_manager {int /*<<< orphan*/  state; int /*<<< orphan*/  name; struct device dev; } ;
struct fpga_image_info {int dummy; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPGA_MGR_STATE_FIRMWARE_REQ ; 
 int /*<<< orphan*/  FPGA_MGR_STATE_FIRMWARE_REQ_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fpga_manager*,struct fpga_image_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char const*,struct device*) ; 

__attribute__((used)) static int FUNC5(struct fpga_manager *mgr,
				  struct fpga_image_info *info,
				  const char *image_name)
{
	struct device *dev = &mgr->dev;
	const struct firmware *fw;
	int ret;

	FUNC1(dev, "writing %s to %s\n", image_name, mgr->name);

	mgr->state = FPGA_MGR_STATE_FIRMWARE_REQ;

	ret = FUNC4(&fw, image_name, dev);
	if (ret) {
		mgr->state = FPGA_MGR_STATE_FIRMWARE_REQ_ERR;
		FUNC0(dev, "Error requesting firmware %s\n", image_name);
		return ret;
	}

	ret = FUNC2(mgr, info, fw->data, fw->size);

	FUNC3(fw);

	return ret;
}