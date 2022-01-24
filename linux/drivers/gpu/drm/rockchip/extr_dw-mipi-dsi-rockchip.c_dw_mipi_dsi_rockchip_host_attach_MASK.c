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
struct mipi_dsi_device {int dummy; } ;
struct dw_mipi_dsi_rockchip {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (struct dw_mipi_dsi_rockchip*) ; 
 int /*<<< orphan*/  dw_mipi_dsi_rockchip_ops ; 

__attribute__((used)) static int FUNC5(void *priv_data,
					    struct mipi_dsi_device *device)
{
	struct dw_mipi_dsi_rockchip *dsi = priv_data;
	struct device *second;
	int ret;

	ret = FUNC3(dsi->dev, &dw_mipi_dsi_rockchip_ops);
	if (ret) {
		FUNC0(dsi->dev, "Failed to register component: %d\n",
					ret);
		return ret;
	}

	second = FUNC4(dsi);
	if (FUNC1(second))
		return FUNC2(second);
	if (second) {
		ret = FUNC3(second, &dw_mipi_dsi_rockchip_ops);
		if (ret) {
			FUNC0(second,
				      "Failed to register component: %d\n",
				      ret);
			return ret;
		}
	}

	return 0;
}