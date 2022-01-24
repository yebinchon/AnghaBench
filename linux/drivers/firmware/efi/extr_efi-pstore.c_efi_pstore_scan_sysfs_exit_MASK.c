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
struct list_head {int dummy; } ;
struct efivar_entry {struct list_head list; } ;

/* Variables and functions */
 int FUNC0 (struct efivar_entry*,int) ; 

__attribute__((used)) static int FUNC1(struct efivar_entry *pos,
				       struct efivar_entry *next,
				       struct list_head *head, bool stop)
{
	int ret = FUNC0(pos, true);

	if (ret)
		return ret;

	if (stop)
		ret = FUNC0(next, &next->list != head);
	return ret;
}