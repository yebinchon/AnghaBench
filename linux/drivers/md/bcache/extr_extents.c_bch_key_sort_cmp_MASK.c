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
struct btree_iter_set {scalar_t__ k; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC1(struct btree_iter_set l,
			     struct btree_iter_set r)
{
	int64_t c = FUNC0(l.k, r.k);

	return c ? c > 0 : l.k < r.k;
}