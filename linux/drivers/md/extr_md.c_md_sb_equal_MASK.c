#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nr_disks; } ;
typedef  TYPE_1__ mdp_super_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MD_SB_GENERIC_CONSTANT_WORDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(mdp_super_t *sb1, mdp_super_t *sb2)
{
	int ret;
	mdp_super_t *tmp1, *tmp2;

	tmp1 = FUNC1(sizeof(*tmp1),GFP_KERNEL);
	tmp2 = FUNC1(sizeof(*tmp2),GFP_KERNEL);

	if (!tmp1 || !tmp2) {
		ret = 0;
		goto abort;
	}

	*tmp1 = *sb1;
	*tmp2 = *sb2;

	/*
	 * nr_disks is not constant
	 */
	tmp1->nr_disks = 0;
	tmp2->nr_disks = 0;

	ret = (FUNC2(tmp1, tmp2, MD_SB_GENERIC_CONSTANT_WORDS * 4) == 0);
abort:
	FUNC0(tmp1);
	FUNC0(tmp2);
	return ret;
}