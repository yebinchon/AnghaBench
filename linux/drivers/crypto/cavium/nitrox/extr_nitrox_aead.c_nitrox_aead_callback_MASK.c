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
struct nitrox_aead_rctx {int /*<<< orphan*/  nkreq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nitrox_aead_rctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5(void *arg, int err)
{
	struct aead_request *areq = arg;
	struct nitrox_aead_rctx *rctx = FUNC0(areq);

	FUNC2(&rctx->nkreq);
	FUNC1(&rctx->nkreq);
	if (err) {
		FUNC3("request failed status 0x%0x\n", err);
		err = -EINVAL;
	}

	areq->base.complete(&areq->base, err);
}