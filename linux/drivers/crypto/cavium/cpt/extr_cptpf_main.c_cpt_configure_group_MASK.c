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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct cpt_device {int max_se_cores; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 scalar_t__ AE_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  CSR_DELAY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cpt_device *cpt, u8 grp,
				u64 coremask, u8 type)
{
	u64 pf_gx_en = 0;

	if (type == AE_TYPES)
		coremask = (coremask << cpt->max_se_cores);

	pf_gx_en = FUNC1(cpt->reg_base, FUNC0(0, grp));
	FUNC2(cpt->reg_base, FUNC0(0, grp),
			(pf_gx_en | coremask));
	FUNC3(CSR_DELAY);
}