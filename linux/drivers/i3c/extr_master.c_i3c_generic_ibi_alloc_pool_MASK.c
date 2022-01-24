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
struct i3c_ibi_setup {unsigned int num_slots; int max_payload_len; } ;
struct TYPE_2__ {void* data; } ;
struct i3c_generic_ibi_slot {int /*<<< orphan*/  node; TYPE_1__ base; } ;
struct i3c_generic_ibi_pool {int /*<<< orphan*/  num_slots; int /*<<< orphan*/  free_slots; void* payload_buf; struct i3c_generic_ibi_slot* slots; int /*<<< orphan*/  pending; int /*<<< orphan*/  lock; } ;
struct i3c_dev_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct i3c_generic_ibi_pool* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_generic_ibi_pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_dev_desc*,TYPE_1__*) ; 
 void* FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 struct i3c_generic_ibi_pool* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct i3c_generic_ibi_pool *
FUNC8(struct i3c_dev_desc *dev,
			   const struct i3c_ibi_setup *req)
{
	struct i3c_generic_ibi_pool *pool;
	struct i3c_generic_ibi_slot *slot;
	unsigned int i;
	int ret;

	pool = FUNC5(sizeof(*pool), GFP_KERNEL);
	if (!pool)
		return FUNC0(-ENOMEM);

	FUNC7(&pool->lock);
	FUNC1(&pool->free_slots);
	FUNC1(&pool->pending);

	pool->slots = FUNC4(req->num_slots, sizeof(*slot), GFP_KERNEL);
	if (!pool->slots) {
		ret = -ENOMEM;
		goto err_free_pool;
	}

	if (req->max_payload_len) {
		pool->payload_buf = FUNC4(req->num_slots,
					    req->max_payload_len, GFP_KERNEL);
		if (!pool->payload_buf) {
			ret = -ENOMEM;
			goto err_free_pool;
		}
	}

	for (i = 0; i < req->num_slots; i++) {
		slot = &pool->slots[i];
		FUNC3(dev, &slot->base);

		if (req->max_payload_len)
			slot->base.data = pool->payload_buf +
					  (i * req->max_payload_len);

		FUNC6(&slot->node, &pool->free_slots);
		pool->num_slots++;
	}

	return pool;

err_free_pool:
	FUNC2(pool);
	return FUNC0(ret);
}