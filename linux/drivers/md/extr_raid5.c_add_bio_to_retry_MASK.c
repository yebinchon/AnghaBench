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
struct r5conf {TYPE_1__* mddev; int /*<<< orphan*/  device_lock; struct bio* retry_read_aligned_list; } ;
struct bio {struct bio* bi_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct bio *bi,struct r5conf *conf)
{
	unsigned long flags;

	FUNC1(&conf->device_lock, flags);

	bi->bi_next = conf->retry_read_aligned_list;
	conf->retry_read_aligned_list = bi;

	FUNC2(&conf->device_lock, flags);
	FUNC0(conf->mddev->thread);
}