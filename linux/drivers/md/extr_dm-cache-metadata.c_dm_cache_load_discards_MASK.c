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
struct dm_cache_metadata {int dummy; } ;
typedef  int /*<<< orphan*/  load_discard_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int FUNC2 (struct dm_cache_metadata*,int /*<<< orphan*/ ,void*) ; 

int FUNC3(struct dm_cache_metadata *cmd,
			   load_discard_fn fn, void *context)
{
	int r;

	FUNC0(cmd);
	r = FUNC2(cmd, fn, context);
	FUNC1(cmd);

	return r;
}