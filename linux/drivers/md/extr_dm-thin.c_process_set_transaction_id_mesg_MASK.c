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
struct pool {int /*<<< orphan*/  pmd; } ;
typedef  int /*<<< orphan*/  dm_thin_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int,unsigned long long*) ; 

__attribute__((used)) static int FUNC4(unsigned argc, char **argv, struct pool *pool)
{
	dm_thin_id old_id, new_id;
	int r;

	r = FUNC1(argc, 3);
	if (r)
		return r;

	if (FUNC3(argv[1], 10, (unsigned long long *)&old_id)) {
		FUNC0("set_transaction_id message: Unrecognised id %s.", argv[1]);
		return -EINVAL;
	}

	if (FUNC3(argv[2], 10, (unsigned long long *)&new_id)) {
		FUNC0("set_transaction_id message: Unrecognised new id %s.", argv[2]);
		return -EINVAL;
	}

	r = FUNC2(pool->pmd, old_id, new_id);
	if (r) {
		FUNC0("Failed to change transaction id from %s to %s.",
		       argv[1], argv[2]);
		return r;
	}

	return 0;
}