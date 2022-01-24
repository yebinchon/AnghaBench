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
struct mipi_dsi_driver {int /*<<< orphan*/  (* shutdown ) (struct mipi_dsi_device*) ;} ;
struct mipi_dsi_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_device* FUNC1 (struct device*) ; 
 struct mipi_dsi_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct mipi_dsi_driver *drv = FUNC2(dev->driver);
	struct mipi_dsi_device *dsi = FUNC1(dev);

	drv->shutdown(dsi);
}