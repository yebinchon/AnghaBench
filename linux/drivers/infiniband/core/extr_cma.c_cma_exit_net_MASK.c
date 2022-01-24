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
struct net {int dummy; } ;
struct cma_pernet {int /*<<< orphan*/  ib_ps; int /*<<< orphan*/  ipoib_ps; int /*<<< orphan*/  udp_ps; int /*<<< orphan*/  tcp_ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cma_pernet* FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net *net)
{
	struct cma_pernet *pernet = FUNC1(net);

	FUNC0(!FUNC2(&pernet->tcp_ps));
	FUNC0(!FUNC2(&pernet->udp_ps));
	FUNC0(!FUNC2(&pernet->ipoib_ps));
	FUNC0(!FUNC2(&pernet->ib_ps));
}