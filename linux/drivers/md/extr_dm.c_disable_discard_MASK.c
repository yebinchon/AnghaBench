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
struct queue_limits {scalar_t__ max_discard_sectors; } ;
struct mapped_device {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct queue_limits* FUNC1 (struct mapped_device*) ; 

void FUNC2(struct mapped_device *md)
{
	struct queue_limits *limits = FUNC1(md);

	/* device doesn't really support DISCARD, disable it */
	limits->max_discard_sectors = 0;
	FUNC0(QUEUE_FLAG_DISCARD, md->queue);
}