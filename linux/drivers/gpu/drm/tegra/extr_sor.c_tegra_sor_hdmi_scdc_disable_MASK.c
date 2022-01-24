#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct i2c_adapter* ddc; } ;
struct tegra_sor {TYPE_1__ output; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_sor*) ; 

__attribute__((used)) static void FUNC3(struct tegra_sor *sor)
{
	struct i2c_adapter *ddc = sor->output.ddc;

	FUNC0(ddc, false);
	FUNC1(ddc, false);

	FUNC2(sor);
}