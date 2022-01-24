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
struct sec_queue {int queue_id; int /*<<< orphan*/  name; struct sec_dev_info* dev_info; } ;
struct sec_dev_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct sec_dev_info *info,
				struct sec_queue *queue, int queue_id)
{
	queue->dev_info = info;
	queue->queue_id = queue_id;
	FUNC1(queue->name, sizeof(queue->name),
		 "%s_%d", FUNC0(info->dev), queue->queue_id);
}