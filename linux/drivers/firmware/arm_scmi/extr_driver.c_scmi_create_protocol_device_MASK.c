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
struct scmi_info {int /*<<< orphan*/  dev; } ;
struct scmi_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct scmi_device* FUNC1 (struct device_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scmi_device*) ; 
 scalar_t__ FUNC3 (struct scmi_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scmi_device*) ; 

__attribute__((used)) static inline void
FUNC5(struct device_node *np, struct scmi_info *info,
			    int prot_id)
{
	struct scmi_device *sdev;

	sdev = FUNC1(np, info->dev, prot_id);
	if (!sdev) {
		FUNC0(&info->dev, "failed to create %d protocol device\n",
			prot_id);
		return;
	}

	if (FUNC3(info, &sdev->dev, prot_id)) {
		FUNC0(&sdev->dev, "failed to setup transport\n");
		FUNC2(sdev);
		return;
	}

	/* setup handle now as the transport is ready */
	FUNC4(sdev);
}