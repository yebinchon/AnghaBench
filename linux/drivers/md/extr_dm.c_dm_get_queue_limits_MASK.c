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
struct queue_limits {int dummy; } ;
struct mapped_device {TYPE_1__* queue; int /*<<< orphan*/  holders; } ;
struct TYPE_2__ {struct queue_limits limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct queue_limits *FUNC2(struct mapped_device *md)
{
	FUNC0(!FUNC1(&md->holders));
	return &md->queue->limits;
}