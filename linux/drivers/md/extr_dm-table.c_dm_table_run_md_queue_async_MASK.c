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
struct request_queue {int dummy; } ;
struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 struct request_queue* FUNC1 (struct mapped_device*) ; 
 struct mapped_device* FUNC2 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*) ; 

void FUNC4(struct dm_table *t)
{
	struct mapped_device *md;
	struct request_queue *queue;

	if (!FUNC3(t))
		return;

	md = FUNC2(t);
	queue = FUNC1(md);
	if (queue)
		FUNC0(queue, true);
}