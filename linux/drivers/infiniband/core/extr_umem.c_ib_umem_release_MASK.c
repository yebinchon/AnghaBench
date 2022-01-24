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
struct ib_umem {TYPE_1__* owning_mm; int /*<<< orphan*/  ibdev; scalar_t__ is_odp; } ;
struct TYPE_2__ {int /*<<< orphan*/  pinned_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ib_umem*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_umem*) ; 
 void FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_umem*) ; 

void FUNC7(struct ib_umem *umem)
{
	if (!umem)
		return;
	if (umem->is_odp)
		return FUNC3(FUNC6(umem));

	FUNC0(umem->ibdev, umem, 1);

	FUNC1(FUNC2(umem), &umem->owning_mm->pinned_vm);
	FUNC5(umem->owning_mm);
	FUNC4(umem);
}