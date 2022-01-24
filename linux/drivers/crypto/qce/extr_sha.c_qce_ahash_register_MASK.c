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
struct qce_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ahash_def ; 
 int FUNC1 (int /*<<< orphan*/ *,struct qce_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qce_device*) ; 

__attribute__((used)) static int FUNC3(struct qce_device *qce)
{
	int ret, i;

	for (i = 0; i < FUNC0(ahash_def); i++) {
		ret = FUNC1(&ahash_def[i], qce);
		if (ret)
			goto err;
	}

	return 0;
err:
	FUNC2(qce);
	return ret;
}