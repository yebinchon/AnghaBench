#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct siw_cep {int /*<<< orphan*/  lock; TYPE_1__* mpa_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct siw_cep *cep)
{
	FUNC3(&cep->lock);
	if (cep->mpa_timer) {
		if (FUNC0(&cep->mpa_timer->work)) {
			FUNC2(cep);
			FUNC1(cep->mpa_timer); /* not needed again */
		}
		cep->mpa_timer = NULL;
	}
	FUNC4(&cep->lock);
}