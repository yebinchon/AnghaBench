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
struct rxe_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rxe_dev*) ; 

void FUNC4(struct rxe_dev *rxe)
{
	if (FUNC1(rxe->ndev) && FUNC0(rxe->ndev))
		FUNC3(rxe);
	else
		FUNC2(rxe);
}