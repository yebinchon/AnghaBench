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
typedef  int u32 ;
struct sysmmu_drvdata {int /*<<< orphan*/  version; int /*<<< orphan*/  sysmmu; scalar_t__ sfrbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ REG_MMU_VERSION ; 
 int /*<<< orphan*/  FUNC4 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct sysmmu_drvdata *data)
{
	u32 ver;

	FUNC5(data);

	ver = FUNC7(data->sfrbase + REG_MMU_VERSION);

	/* controllers on some SoCs don't report proper version */
	if (ver == 0x80000001u)
		data->version = FUNC0(1, 0);
	else
		data->version = FUNC3(ver);

	FUNC6(data->sysmmu, "hardware version: %d.%d\n",
		FUNC1(data->version), FUNC2(data->version));

	FUNC4(data);
}