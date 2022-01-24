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
struct cache {int buckets; int /*<<< orphan*/  free_inc; } ;
struct bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache*,struct bucket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bucket*) ; 

__attribute__((used)) static void FUNC2(struct cache *ca, struct bucket *b)
{
	FUNC0(ca, b);

	FUNC1(&ca->free_inc, b - ca->buckets);
}