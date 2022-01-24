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
struct sec_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct sec_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sec_dev_info* FUNC3 () ; 
 int /*<<< orphan*/  sec_id_lock ; 
 struct sec_queue* FUNC4 (struct sec_dev_info*) ; 

struct sec_queue *FUNC5(void)
{
	struct sec_dev_info *info;
	struct sec_queue *queue = FUNC0(-ENODEV);

	FUNC1(&sec_id_lock);
	info = FUNC3();
	if (!info)
		goto unlock;

	queue = FUNC4(info);

unlock:
	FUNC2(&sec_id_lock);

	return queue;
}