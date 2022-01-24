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
struct iova_domain {int /*<<< orphan*/ * entry_dtor; int /*<<< orphan*/ * flush_cb; int /*<<< orphan*/ * fq; int /*<<< orphan*/  fq_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iova_domain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iova_domain*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iova_domain *iovad)
{
	if (!FUNC3(iovad))
		return;

	if (FUNC4(&iovad->fq_timer))
		FUNC0(&iovad->fq_timer);

	FUNC1(iovad);

	FUNC2(iovad->fq);

	iovad->fq         = NULL;
	iovad->flush_cb   = NULL;
	iovad->entry_dtor = NULL;
}