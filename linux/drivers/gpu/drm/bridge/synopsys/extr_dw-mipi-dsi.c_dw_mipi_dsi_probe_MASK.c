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
struct platform_device {int dummy; } ;
struct dw_mipi_dsi_plat_data {int dummy; } ;
struct dw_mipi_dsi {int dummy; } ;

/* Variables and functions */
 struct dw_mipi_dsi* FUNC0 (struct platform_device*,struct dw_mipi_dsi_plat_data const*) ; 

struct dw_mipi_dsi *
FUNC1(struct platform_device *pdev,
		  const struct dw_mipi_dsi_plat_data *plat_data)
{
	return FUNC0(pdev, plat_data);
}