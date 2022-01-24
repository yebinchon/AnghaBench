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
struct cache {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_FAIL ; 
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (struct cache*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cache *cache)
{
	const char *dev_name = FUNC2(cache);

	if (FUNC5(cache) >= CM_READ_ONLY)
		return;

	if (FUNC4(cache->cmd)) {
		FUNC0("%s: failed to set 'needs_check' flag in metadata", dev_name);
		FUNC6(cache, CM_FAIL);
	}

	FUNC1("%s: aborting current metadata transaction", dev_name);
	if (FUNC3(cache->cmd)) {
		FUNC0("%s: failed to abort metadata transaction", dev_name);
		FUNC6(cache, CM_FAIL);
	}
}