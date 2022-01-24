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
struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * MPCC_OGAM_LUT_INDEX ; 
 int /*<<< orphan*/ * MPCC_OGAM_LUT_RAM_CONTROL ; 
 int /*<<< orphan*/  MPCC_OGAM_LUT_RAM_SEL ; 
 int /*<<< orphan*/  MPCC_OGAM_LUT_WRITE_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct dcn20_mpc* FUNC2 (struct mpc*) ; 

__attribute__((used)) static void FUNC3(
		struct mpc *mpc, int mpcc_id,
		bool is_ram_a)
{
	struct dcn20_mpc *mpc20 = FUNC2(mpc);

	FUNC1(MPCC_OGAM_LUT_RAM_CONTROL[mpcc_id],
			MPCC_OGAM_LUT_WRITE_EN_MASK, 7,
			MPCC_OGAM_LUT_RAM_SEL, is_ram_a == true ? 0:1);

	FUNC0(MPCC_OGAM_LUT_INDEX[mpcc_id], 0, MPCC_OGAM_LUT_INDEX, 0);
}