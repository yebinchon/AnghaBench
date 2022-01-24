#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sbp2_target {unsigned int workarounds; } ;
struct TYPE_3__ {int firmware_revision; int model; unsigned int workarounds; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ SBP2_ROM_VALUE_WILDCARD ; 
 unsigned int SBP2_WORKAROUND_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int sbp2_param_workarounds ; 
 TYPE_1__* sbp2_workarounds_table ; 
 int /*<<< orphan*/  FUNC2 (struct sbp2_target*) ; 

__attribute__((used)) static void FUNC3(struct sbp2_target *tgt, u32 model,
				  u32 firmware_revision)
{
	int i;
	unsigned int w = sbp2_param_workarounds;

	if (w)
		FUNC1(FUNC2(tgt),
			   "Please notify linux1394-devel@lists.sf.net "
			   "if you need the workarounds parameter\n");

	if (w & SBP2_WORKAROUND_OVERRIDE)
		goto out;

	for (i = 0; i < FUNC0(sbp2_workarounds_table); i++) {

		if (sbp2_workarounds_table[i].firmware_revision !=
		    (firmware_revision & 0xffffff00))
			continue;

		if (sbp2_workarounds_table[i].model != model &&
		    sbp2_workarounds_table[i].model != SBP2_ROM_VALUE_WILDCARD)
			continue;

		w |= sbp2_workarounds_table[i].workarounds;
		break;
	}
 out:
	if (w)
		FUNC1(FUNC2(tgt), "workarounds 0x%x "
			   "(firmware_revision 0x%06x, model_id 0x%06x)\n",
			   w, firmware_revision, model);
	tgt->workarounds = w;
}