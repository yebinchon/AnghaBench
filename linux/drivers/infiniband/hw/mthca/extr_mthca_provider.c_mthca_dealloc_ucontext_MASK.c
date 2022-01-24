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
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  uar; int /*<<< orphan*/  db_tab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct ib_ucontext*) ; 

__attribute__((used)) static void FUNC4(struct ib_ucontext *context)
{
	FUNC0(FUNC2(context->device), &FUNC3(context)->uar,
				  FUNC3(context)->db_tab);
	FUNC1(FUNC2(context->device), &FUNC3(context)->uar);
}