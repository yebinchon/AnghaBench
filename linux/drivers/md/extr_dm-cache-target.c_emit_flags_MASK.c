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
struct cache_features {int metadata_version; int /*<<< orphan*/  discard_passdown; scalar_t__ io_mode; } ;
struct cache {struct cache_features features; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 scalar_t__ FUNC3 (struct cache*) ; 
 scalar_t__ FUNC4 (struct cache*) ; 
 scalar_t__ FUNC5 (struct cache*) ; 

__attribute__((used)) static void FUNC6(struct cache *cache, char *result,
		       unsigned maxlen, ssize_t *sz_ptr)
{
	ssize_t sz = *sz_ptr;
	struct cache_features *cf = &cache->features;
	unsigned count = (cf->metadata_version == 2) + !cf->discard_passdown + 1;

	FUNC0("%u ", count);

	if (cf->metadata_version == 2)
		FUNC0("metadata2 ");

	if (FUNC5(cache))
		FUNC0("writethrough ");

	else if (FUNC3(cache))
		FUNC0("passthrough ");

	else if (FUNC4(cache))
		FUNC0("writeback ");

	else {
		FUNC0("unknown ");
		FUNC1("%s: internal error: unknown io mode: %d",
		      FUNC2(cache), (int) cf->io_mode);
	}

	if (!cf->discard_passdown)
		FUNC0("no_discard_passdown ");

	*sz_ptr = sz;
}