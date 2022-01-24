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
struct vmw_resource {unsigned long backup_offset; int res_dirty; int id; TYPE_1__* func; struct vmw_private* dev_priv; int /*<<< orphan*/  lru_head; scalar_t__ pin_count; struct vmw_buffer_object* backup; } ;
struct vmw_private {int /*<<< orphan*/  resource_lock; int /*<<< orphan*/ * res_lru; } ;
struct vmw_buffer_object {int dummy; } ;
struct TYPE_2__ {size_t res_type; int /*<<< orphan*/  may_evict; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vmw_buffer_object* FUNC4 (struct vmw_buffer_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_buffer_object**) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_resource*) ; 

void FUNC8(struct vmw_resource *res,
			    bool dirty_set,
			    bool dirty,
			    bool switch_backup,
			    struct vmw_buffer_object *new_backup,
			    unsigned long new_backup_offset)
{
	struct vmw_private *dev_priv = res->dev_priv;

	if (!FUNC1(&res->lru_head))
		return;

	if (switch_backup && new_backup != res->backup) {
		if (res->backup) {
			FUNC7(res);
			FUNC5(&res->backup);
		}

		if (new_backup) {
			res->backup = FUNC4(new_backup);
			FUNC6(res);
		} else {
			res->backup = NULL;
		}
	}
	if (switch_backup)
		res->backup_offset = new_backup_offset;

	if (dirty_set)
		res->res_dirty = dirty;

	if (!res->func->may_evict || res->id == -1 || res->pin_count)
		return;

	FUNC2(&dev_priv->resource_lock);
	FUNC0(&res->lru_head,
		      &res->dev_priv->res_lru[res->func->res_type]);
	FUNC3(&dev_priv->resource_lock);
}