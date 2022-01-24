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
struct rpc {int (* fn1 ) (struct era_metadata*,void*) ;void* arg; int /*<<< orphan*/ * fn0; } ;
struct era {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct era*,struct rpc*) ; 

__attribute__((used)) static int FUNC1(struct era *era,
		      int (*fn)(struct era_metadata *, void *), void *arg)
{
	struct rpc rpc;
	rpc.fn0 = NULL;
	rpc.fn1 = fn;
	rpc.arg = arg;

	return FUNC0(era, &rpc);
}