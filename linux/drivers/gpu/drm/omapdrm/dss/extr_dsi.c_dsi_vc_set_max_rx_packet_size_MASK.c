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
typedef  int /*<<< orphan*/  u16 ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE ; 
 int FUNC0 (struct dsi_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsi_data* FUNC1 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC2(struct omap_dss_device *dssdev, int channel,
		u16 len)
{
	struct dsi_data *dsi = FUNC1(dssdev);

	return FUNC0(dsi, channel,
			MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE, len, 0);
}