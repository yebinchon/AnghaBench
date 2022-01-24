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
struct vmw_private {int dummy; } ;
struct vmw_otable_batch {size_t num_otables; struct ttm_buffer_object* otable_bo; TYPE_1__* otables; } ;
struct ttm_buffer_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
typedef  size_t SVGAOTableType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 
 int FUNC2 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*,size_t,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct vmw_private *dev_priv,
			       struct vmw_otable_batch *batch)
{
	SVGAOTableType i;
	struct ttm_buffer_object *bo = batch->otable_bo;
	int ret;

	for (i = 0; i < batch->num_otables; ++i)
		if (batch->otables[i].enabled)
			FUNC5(dev_priv, i,
						 &batch->otables[i]);

	ret = FUNC2(bo, false, true, NULL);
	FUNC0(ret != 0);

	FUNC4(bo, NULL);
	FUNC3(bo);

	FUNC1(batch->otable_bo);
	batch->otable_bo = NULL;
}