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
struct pl330_thread {int free; int lstenq; int /*<<< orphan*/  ev; TYPE_1__* req; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PL330_ERR_ABORT ; 
 int /*<<< orphan*/  FUNC0 (struct pl330_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pl330_thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pl330_thread *thrd)
{
	if (!thrd || thrd->free)
		return;

	FUNC1(thrd);

	FUNC2(thrd->req[1 - thrd->lstenq].desc, PL330_ERR_ABORT);
	FUNC2(thrd->req[thrd->lstenq].desc, PL330_ERR_ABORT);

	FUNC0(thrd, thrd->ev);
	thrd->free = true;
}