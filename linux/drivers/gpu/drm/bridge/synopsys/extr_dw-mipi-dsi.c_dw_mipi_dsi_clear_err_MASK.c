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
struct dw_mipi_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_INT_MSK0 ; 
 int /*<<< orphan*/  DSI_INT_MSK1 ; 
 int /*<<< orphan*/  DSI_INT_ST0 ; 
 int /*<<< orphan*/  DSI_INT_ST1 ; 
 int /*<<< orphan*/  FUNC0 (struct dw_mipi_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mipi_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dw_mipi_dsi *dsi)
{
	FUNC0(dsi, DSI_INT_ST0);
	FUNC0(dsi, DSI_INT_ST1);
	FUNC1(dsi, DSI_INT_MSK0, 0);
	FUNC1(dsi, DSI_INT_MSK1, 0);
}