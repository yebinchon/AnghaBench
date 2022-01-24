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
struct dw_mipi_dsi_rockchip {int lane_mbps; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct dw_mipi_dsi_rockchip *dsi, int ns)
{
	return FUNC0(ns * dsi->lane_mbps / 8, 1000);
}