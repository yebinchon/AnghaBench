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
struct dm_integrity_c {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 scalar_t__ FUNC0 (struct dm_integrity_c*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_integrity_c*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_integrity_c*,char*,int) ; 
 int FUNC3 (struct dm_integrity_c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct dm_integrity_c *ic)
{
	int r;

	FUNC1(ic);
	if (FUNC0(ic))
		return;

	r = FUNC3(ic, REQ_OP_WRITE, 0);
	if (FUNC4(r))
		FUNC2(ic, "writing superblock", r);
}