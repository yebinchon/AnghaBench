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
struct cache {TYPE_1__* ti; } ;
typedef  enum cache_metadata_mode { ____Placeholder_cache_metadata_mode } cache_metadata_mode ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cache *cache, enum cache_metadata_mode mode)
{
	const char *descs[] = {
		"write",
		"read-only",
		"fail"
	};

	FUNC2(cache->ti->table);
	FUNC0("%s: switching cache to %s mode",
	       FUNC1(cache), descs[(int)mode]);
}