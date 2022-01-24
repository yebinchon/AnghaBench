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
struct keylist {struct bkey* top; struct bkey* keys; } ;
struct bkey {int dummy; } ;

/* Variables and functions */
 struct bkey* FUNC0 (struct bkey*) ; 

struct bkey *FUNC1(struct keylist *l)
{
	struct bkey *k = l->keys;

	if (k == l->top)
		return NULL;

	while (FUNC0(k) != l->top)
		k = FUNC0(k);

	return l->top = k;
}