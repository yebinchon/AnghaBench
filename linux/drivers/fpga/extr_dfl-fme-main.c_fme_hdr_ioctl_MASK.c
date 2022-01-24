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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dfl_feature_platform_data {int dummy; } ;
struct dfl_feature {int dummy; } ;

/* Variables and functions */
#define  DFL_FPGA_FME_PORT_ASSIGN 129 
#define  DFL_FPGA_FME_PORT_RELEASE 128 
 long ENODEV ; 
 struct dfl_feature_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (struct dfl_feature_platform_data*,unsigned long) ; 
 long FUNC2 (struct dfl_feature_platform_data*,unsigned long) ; 

__attribute__((used)) static long FUNC3(struct platform_device *pdev,
			  struct dfl_feature *feature,
			  unsigned int cmd, unsigned long arg)
{
	struct dfl_feature_platform_data *pdata = FUNC0(&pdev->dev);

	switch (cmd) {
	case DFL_FPGA_FME_PORT_RELEASE:
		return FUNC2(pdata, arg);
	case DFL_FPGA_FME_PORT_ASSIGN:
		return FUNC1(pdata, arg);
	}

	return -ENODEV;
}