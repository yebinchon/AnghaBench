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
struct vmw_private {int dummy; } ;
struct vmw_ctx_binding_state {int /*<<< orphan*/  list; struct vmw_private* dev_priv; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vmw_ctx_binding_state* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 
 struct vmw_ctx_binding_state* FUNC5 (int) ; 

struct vmw_ctx_binding_state *
FUNC6(struct vmw_private *dev_priv)
{
	struct vmw_ctx_binding_state *cbs;
	struct ttm_operation_ctx ctx = {
		.interruptible = false,
		.no_wait_gpu = false
	};
	int ret;

	ret = FUNC2(FUNC4(dev_priv), sizeof(*cbs),
				&ctx);
	if (ret)
		return FUNC0(ret);

	cbs = FUNC5(sizeof(*cbs));
	if (!cbs) {
		FUNC3(FUNC4(dev_priv), sizeof(*cbs));
		return FUNC0(-ENOMEM);
	}

	cbs->dev_priv = dev_priv;
	FUNC1(&cbs->list);

	return cbs;
}