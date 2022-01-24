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
struct cache_set {int dummy; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bkey*) ; 
 TYPE_1__* FUNC1 (struct cache_set*,struct bkey*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cache_set*,struct bkey*,unsigned int) ; 

void FUNC4(struct cache_set *c, struct bkey *k)
{
	unsigned int i;

	for (i = 0; i < FUNC0(k); i++)
		if (FUNC3(c, k, i))
			FUNC2(&FUNC1(c, k, i)->pin);
}