#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dev; } ;
struct c4iw_ep {TYPE_2__ com; int /*<<< orphan*/  hwtid; } ;
struct TYPE_3__ {int /*<<< orphan*/  hwtids; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct c4iw_ep *ep)
{
	unsigned long flags;

	FUNC3(&ep->com.dev->hwtids, flags);
	FUNC0(&ep->com.dev->hwtids, ep->hwtid);
	if (FUNC2(&ep->com.dev->hwtids))
		FUNC1(&ep->com.dev->wait);
	FUNC4(&ep->com.dev->hwtids, flags);
}