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
struct srp_fr_pool {int size; struct srp_fr_desc* desc; } ;
struct srp_fr_desc {scalar_t__ mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct srp_fr_pool*) ; 

__attribute__((used)) static void FUNC2(struct srp_fr_pool *pool)
{
	int i;
	struct srp_fr_desc *d;

	if (!pool)
		return;

	for (i = 0, d = &pool->desc[0]; i < pool->size; i++, d++) {
		if (d->mr)
			FUNC0(d->mr);
	}
	FUNC1(pool);
}