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
struct usnic_uiom_interval_node {long start; long last; int flags; int ref_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct usnic_uiom_interval_node* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usnic_uiom_interval_node*
FUNC1(long int start, long int last, int ref_cnt,
				int flags)
{
	struct usnic_uiom_interval_node *interval = FUNC0(sizeof(*interval),
								GFP_ATOMIC);
	if (!interval)
		return NULL;

	interval->start = start;
	interval->last = last;
	interval->flags = flags;
	interval->ref_cnt = ref_cnt;

	return interval;
}