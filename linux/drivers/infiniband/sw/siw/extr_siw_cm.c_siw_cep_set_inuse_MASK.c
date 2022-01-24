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
struct siw_cep {int in_use; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct siw_cep *cep)
{
	unsigned long flags;
retry:
	FUNC2(&cep->lock, flags);

	if (cep->in_use) {
		FUNC3(&cep->lock, flags);
		FUNC4(cep->waitq, !cep->in_use);
		if (FUNC1(current))
			FUNC0(current);
		goto retry;
	} else {
		cep->in_use = 1;
		FUNC3(&cep->lock, flags);
	}
}