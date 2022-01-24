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
struct dm_writecache {int flush_on_suspend; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_writecache*) ; 

__attribute__((used)) static int FUNC2(unsigned argc, char **argv, struct dm_writecache *wc)
{
	if (argc != 1)
		return -EINVAL;

	FUNC0(wc);
	wc->flush_on_suspend = true;
	FUNC1(wc);

	return 0;
}