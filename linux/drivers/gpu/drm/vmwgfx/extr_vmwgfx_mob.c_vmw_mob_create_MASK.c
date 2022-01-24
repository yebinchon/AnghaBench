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
struct vmw_mob {int /*<<< orphan*/  num_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vmw_mob* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

struct vmw_mob *FUNC3(unsigned long data_pages)
{
	struct vmw_mob *mob = FUNC0(sizeof(*mob), GFP_KERNEL);

	if (FUNC1(!mob))
		return NULL;

	mob->num_pages = FUNC2(data_pages);

	return mob;
}