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
struct dm_bufio_client {int /*<<< orphan*/  slab_buffer; } ;
struct dm_buffer {scalar_t__ stack_len; int /*<<< orphan*/  data; int /*<<< orphan*/  data_mode; struct dm_bufio_client* c; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dm_buffer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_buffer*) ; 

__attribute__((used)) static struct dm_buffer *FUNC3(struct dm_bufio_client *c, gfp_t gfp_mask)
{
	struct dm_buffer *b = FUNC1(c->slab_buffer, gfp_mask);

	if (!b)
		return NULL;

	b->c = c;

	b->data = FUNC0(c, gfp_mask, &b->data_mode);
	if (!b->data) {
		FUNC2(c->slab_buffer, b);
		return NULL;
	}

#ifdef CONFIG_DM_DEBUG_BLOCK_STACK_TRACING
	b->stack_len = 0;
#endif
	return b;
}