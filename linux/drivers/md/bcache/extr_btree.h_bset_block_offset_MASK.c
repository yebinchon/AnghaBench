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
struct btree {TYPE_1__* c; int /*<<< orphan*/  keys; } ;
struct bset {int dummy; } ;
struct TYPE_2__ {unsigned int block_bits; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,struct bset*) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct btree *b, struct bset *i)
{
	return FUNC0(&b->keys, i) >> b->c->block_bits;
}