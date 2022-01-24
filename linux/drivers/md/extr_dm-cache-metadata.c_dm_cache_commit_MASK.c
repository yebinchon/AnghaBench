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
struct dm_cache_metadata {scalar_t__ fail_io; } ;
typedef  int /*<<< orphan*/  flags_mutator ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int FUNC2 (struct dm_cache_metadata*) ; 
 int FUNC3 (struct dm_cache_metadata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clear_clean_shutdown ; 
 int /*<<< orphan*/  set_clean_shutdown ; 

int FUNC4(struct dm_cache_metadata *cmd, bool clean_shutdown)
{
	int r = -EINVAL;
	flags_mutator mutator = (clean_shutdown ? set_clean_shutdown :
				 clear_clean_shutdown);

	FUNC0(cmd);
	if (cmd->fail_io)
		goto out;

	r = FUNC3(cmd, mutator);
	if (r)
		goto out;

	r = FUNC2(cmd);
out:
	FUNC1(cmd);
	return r;
}