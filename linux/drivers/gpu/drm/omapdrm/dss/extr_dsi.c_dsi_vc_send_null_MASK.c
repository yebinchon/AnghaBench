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
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_NULL_PACKET ; 
 int FUNC0 (struct dsi_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dsi_data *dsi, int channel)
{
	return FUNC0(dsi, channel, MIPI_DSI_NULL_PACKET, NULL, 0, 0);
}