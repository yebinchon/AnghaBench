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
struct upper_list {struct net_device* upper; int /*<<< orphan*/  list; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct upper_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC3(struct net_device *upper, void *data)
{
	struct upper_list *entry = FUNC1(sizeof(*entry), GFP_ATOMIC);
	struct list_head *upper_list = data;

	if (!entry)
		return 0;

	FUNC2(&entry->list, upper_list);
	FUNC0(upper);
	entry->upper = upper;

	return 0;
}