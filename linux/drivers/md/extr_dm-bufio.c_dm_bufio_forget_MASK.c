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
struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int /*<<< orphan*/  state; int /*<<< orphan*/  hold_count; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct dm_buffer* FUNC0 (struct dm_bufio_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_bufio_client*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct dm_bufio_client *c, sector_t block)
{
	struct dm_buffer *b;

	FUNC3(c);

	b = FUNC0(c, block);
	if (b && FUNC5(!b->hold_count) && FUNC5(!b->state)) {
		FUNC2(b);
		FUNC1(b);
	}

	FUNC4(c);
}