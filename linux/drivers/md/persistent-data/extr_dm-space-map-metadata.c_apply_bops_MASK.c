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
struct sm_metadata {int /*<<< orphan*/  uncommitted; } ;
struct block_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct block_op*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sm_metadata*,struct block_op*) ; 

__attribute__((used)) static int FUNC5(struct sm_metadata *smm)
{
	int r = 0;

	while (!FUNC1(&smm->uncommitted)) {
		struct block_op bop;

		r = FUNC2(&smm->uncommitted, &bop);
		if (r) {
			FUNC0("bug in bop ring buffer");
			break;
		}

		r = FUNC4(smm, &bop);
		if (r)
			break;

		FUNC3(&smm->uncommitted);
	}

	return r;
}