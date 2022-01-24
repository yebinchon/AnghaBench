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
struct netdev_notifier_changeupper_info {scalar_t__ linking; } ;
struct netdev_event_work_cmd {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_notifier_changeupper_info*,struct netdev_event_work_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_notifier_changeupper_info*,struct netdev_event_work_cmd*) ; 

__attribute__((used)) static void FUNC2(struct net_device *event_ndev,
		struct netdev_notifier_changeupper_info *changeupper_info,
		struct netdev_event_work_cmd *cmds)
{
	if (changeupper_info->linking)
		FUNC0(event_ndev, changeupper_info, cmds);
	else
		FUNC1(changeupper_info, cmds);
}