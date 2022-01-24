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
typedef  int /*<<< orphan*/  u32 ;
struct sti_hda {int enabled; int /*<<< orphan*/  clk_pix; int /*<<< orphan*/  clk_hddac; } ;
struct drm_bridge {struct sti_hda* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_AWG_ASYNC_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HDA_ANA_ANC_CTRL ; 
 int /*<<< orphan*/  HDA_ANA_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_hda*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_hda*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_hda*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge)
{
	struct sti_hda *hda = bridge->driver_private;
	u32 val;

	if (!hda->enabled)
		return;

	FUNC0("\n");

	/* Disable HD DAC and AWG */
	val = FUNC3(hda, HDA_ANA_CFG);
	val &= ~CFG_AWG_ASYNC_EN;
	FUNC4(hda, val, HDA_ANA_CFG);
	FUNC4(hda, 0, HDA_ANA_ANC_CTRL);

	FUNC2(hda, false);

	/* Disable/unprepare hda clock */
	FUNC1(hda->clk_hddac);
	FUNC1(hda->clk_pix);

	hda->enabled = false;
}