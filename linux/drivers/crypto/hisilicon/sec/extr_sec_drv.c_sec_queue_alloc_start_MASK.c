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
struct sec_queue {int dummy; } ;
struct sec_dev_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sec_queue* FUNC3 (struct sec_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sec_queue*) ; 

__attribute__((used)) static struct sec_queue *FUNC5(struct sec_dev_info *info)
{
	struct sec_queue *queue;

	queue = FUNC3(info);
	if (FUNC0(queue)) {
		FUNC2(info->dev, "alloc sec queue failed! %ld\n",
			FUNC1(queue));
		return queue;
	}

	FUNC4(queue);

	return queue;
}