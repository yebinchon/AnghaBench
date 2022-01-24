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
struct mad_rmpp_recv {int /*<<< orphan*/  ah; int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_DESTROY_AH_SLEEPABLE ; 
 int /*<<< orphan*/  FUNC0 (struct mad_rmpp_recv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mad_rmpp_recv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mad_rmpp_recv *rmpp_recv)
{
	FUNC0(rmpp_recv);
	FUNC3(&rmpp_recv->comp);
	FUNC2(rmpp_recv->ah, RDMA_DESTROY_AH_SLEEPABLE);
	FUNC1(rmpp_recv);
}