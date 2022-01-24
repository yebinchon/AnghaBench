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
struct panel_drv_data {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct panel_drv_data *ddata)
{
	FUNC0(ddata->reset_gpio, 1);
	FUNC1(10);
	/* reset the panel */
	FUNC0(ddata->reset_gpio, 0);
	/* assert reset */
	FUNC1(10);
	FUNC0(ddata->reset_gpio, 1);
	/* wait after releasing reset */
	FUNC2(5000, 10000);
}