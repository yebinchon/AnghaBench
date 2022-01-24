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
struct btree_keys {int dummy; } ;
typedef  void bset ;
struct TYPE_2__ {void* data; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct btree_keys*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline struct bset *FUNC3(struct btree_keys *b,
					 unsigned int block_bytes)
{
	struct bset *i = FUNC0(b)->data;

	return ((void *) i) + FUNC1(FUNC2(i), block_bytes);
}