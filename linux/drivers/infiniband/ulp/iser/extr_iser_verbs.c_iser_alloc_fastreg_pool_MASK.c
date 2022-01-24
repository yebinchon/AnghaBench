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
struct iser_fr_pool {scalar_t__ size; int /*<<< orphan*/  all_list; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct iser_fr_desc {int /*<<< orphan*/  all_list; int /*<<< orphan*/  list; } ;
struct iser_device {int /*<<< orphan*/  pd; } ;
struct ib_conn {int /*<<< orphan*/  pi_support; struct iser_fr_pool fr_pool; struct iser_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct iser_fr_desc*) ; 
 int FUNC2 (struct iser_fr_desc*) ; 
 struct iser_fr_desc* FUNC3 (struct iser_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ib_conn *ib_conn,
			    unsigned cmds_max,
			    unsigned int size)
{
	struct iser_device *device = ib_conn->device;
	struct iser_fr_pool *fr_pool = &ib_conn->fr_pool;
	struct iser_fr_desc *desc;
	int i, ret;

	FUNC0(&fr_pool->list);
	FUNC0(&fr_pool->all_list);
	FUNC6(&fr_pool->lock);
	fr_pool->size = 0;
	for (i = 0; i < cmds_max; i++) {
		desc = FUNC3(device, device->pd,
						ib_conn->pi_support, size);
		if (FUNC1(desc)) {
			ret = FUNC2(desc);
			goto err;
		}

		FUNC5(&desc->list, &fr_pool->list);
		FUNC5(&desc->all_list, &fr_pool->all_list);
		fr_pool->size++;
	}

	return 0;

err:
	FUNC4(ib_conn);
	return ret;
}