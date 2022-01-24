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
struct TYPE_4__ {TYPE_1__* first; } ;
struct mv_cesa_req {struct mv_cesa_engine* engine; TYPE_2__ chain; } ;
struct mv_cesa_engine {scalar_t__ regs; } ;
struct mv_cesa_ahash_req {int /*<<< orphan*/ * state; struct mv_cesa_req base; } ;
struct ahash_request {int dummy; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int CESA_TDMA_SET_STATE ; 
 struct mv_cesa_ahash_req* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_cesa_req*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC2(req);
	struct mv_cesa_req *base = &creq->base;

	/* We must explicitly set the digest state. */
	if (base->chain.first->flags & CESA_TDMA_SET_STATE) {
		struct mv_cesa_engine *engine = base->engine;
		int i;

		/* Set the hash state in the IVDIG regs. */
		for (i = 0; i < FUNC0(creq->state); i++)
			FUNC4(creq->state[i], engine->regs +
				       FUNC1(i));
	}

	FUNC3(base);
}