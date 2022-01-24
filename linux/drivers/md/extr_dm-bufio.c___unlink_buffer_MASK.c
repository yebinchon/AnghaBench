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
struct dm_bufio_client {int /*<<< orphan*/ * n_buffers; } ;
struct dm_buffer {size_t list_mode; int /*<<< orphan*/  lru_list; struct dm_bufio_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bufio_client*,struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dm_buffer *b)
{
	struct dm_bufio_client *c = b->c;

	FUNC0(!c->n_buffers[b->list_mode]);

	c->n_buffers[b->list_mode]--;
	FUNC1(b->c, b);
	FUNC3(&b->lru_list);

	FUNC2(b, true);
}