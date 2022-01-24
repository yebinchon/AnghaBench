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
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cache *cache, const char *op, int r)
{
	FUNC0("%s: metadata operation '%s' failed: error = %d",
		    FUNC2(cache), op, r);
	FUNC1(cache);
	FUNC3(cache, CM_READ_ONLY);
}