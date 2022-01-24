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
struct sbp2_target {unsigned int mgt_orb_timeout; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbp2_target*) ; 

__attribute__((used)) static void FUNC3(struct sbp2_target *tgt)
{
	unsigned int timeout = tgt->mgt_orb_timeout;

	if (timeout > 40000)
		FUNC1(FUNC2(tgt), "%ds mgt_ORB_timeout limited to 40s\n",
			   timeout / 1000);

	tgt->mgt_orb_timeout = FUNC0(timeout, 5000, 40000);
}