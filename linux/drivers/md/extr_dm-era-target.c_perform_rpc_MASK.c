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
struct rpc {int result; int /*<<< orphan*/  complete; int /*<<< orphan*/  list; } ;
struct era {int /*<<< orphan*/  rpc_lock; int /*<<< orphan*/  rpc_calls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct era*) ; 

__attribute__((used)) static int FUNC6(struct era *era, struct rpc *rpc)
{
	rpc->result = 0;
	FUNC0(&rpc->complete);

	FUNC2(&era->rpc_lock);
	FUNC1(&rpc->list, &era->rpc_calls);
	FUNC3(&era->rpc_lock);

	FUNC5(era);
	FUNC4(&rpc->complete);

	return rpc->result;
}