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
struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bkey const*) ; 
 int /*<<< orphan*/  FUNC1 (struct bkey const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bkey const*) ; 
 scalar_t__ FUNC3 (struct cache_set*,struct bkey const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct bkey const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_set*,struct bkey const*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_set*,char*,char*,int /*<<< orphan*/ ) ; 

bool FUNC7(struct cache_set *c, const struct bkey *k)
{
	char buf[80];

	if (!FUNC1(k) || !FUNC2(k) || FUNC0(k))
		goto bad;

	if (FUNC3(c, k))
		goto bad;

	return false;
bad:
	FUNC4(buf, sizeof(buf), k);
	FUNC6(c, "spotted btree ptr %s: %s", buf, FUNC5(c, k));
	return true;
}