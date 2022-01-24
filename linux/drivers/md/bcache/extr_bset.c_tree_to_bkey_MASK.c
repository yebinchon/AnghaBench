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
struct bset_tree {TYPE_1__* tree; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  m; } ;

/* Variables and functions */
 struct bkey* FUNC0 (struct bset_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct bset_tree*) ; 

__attribute__((used)) static struct bkey *FUNC2(struct bset_tree *t, unsigned int j)
{
	return FUNC0(t, FUNC1(j, t), t->tree[j].m);
}