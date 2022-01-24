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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct c4iw_ep {int hwtid; TYPE_1__ com; } ;

/* Variables and functions */
 int /*<<< orphan*/  RELEASE_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct c4iw_ep *ep)
{
	FUNC2(RELEASE_RESOURCES, &ep->com.flags);

	/*
	 * If we have a hwtid, then remove it from the idr table
	 * so lookups will no longer find this endpoint.  Otherwise
	 * we have a race where one thread finds the ep ptr just
	 * before the other thread is freeing the ep memory.
	 */
	if (ep->hwtid != -1)
		FUNC1(ep);
	FUNC0(&ep->com);
}