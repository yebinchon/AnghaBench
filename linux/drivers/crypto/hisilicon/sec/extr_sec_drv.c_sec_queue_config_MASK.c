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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sec_dev_info*,struct sec_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_queue*) ; 
 int FUNC4 (struct sec_queue*) ; 
 int FUNC5 (struct sec_queue*) ; 

__attribute__((used)) static int FUNC6(struct sec_dev_info *info, struct sec_queue *queue,
			    int queue_id)
{
	int ret;

	FUNC1(info, queue, queue_id);

	ret = FUNC5(queue);
	if (ret)
		return ret;

	ret = FUNC4(queue);
	if (ret) {
		FUNC0(info->dev, "Queue map failed %d\n", ret);
		FUNC2(queue);
		return ret;
	}

	FUNC3(queue);

	return 0;
}