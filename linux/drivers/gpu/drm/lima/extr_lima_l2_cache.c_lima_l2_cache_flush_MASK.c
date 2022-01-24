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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct lima_ip {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_L2_CACHE_COMMAND ; 
 int /*<<< orphan*/  LIMA_L2_CACHE_COMMAND_CLEAR_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lima_ip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct lima_ip *ip)
{
	int ret;

	FUNC2(&ip->data.lock);
	FUNC0(LIMA_L2_CACHE_COMMAND, LIMA_L2_CACHE_COMMAND_CLEAR_ALL);
	ret = FUNC1(ip);
	FUNC3(&ip->data.lock);
	return ret;
}