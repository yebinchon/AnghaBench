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

/* Variables and functions */
 unsigned int FUNC0 (struct bkey*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_set*,struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_set*,struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct cache_set *c, struct bkey *k)
{
	unsigned int i;

	for (i = 0; i < FUNC0(k); i++)
		FUNC3(FUNC2(c, k, i),
				  FUNC1(c, k, i));
}