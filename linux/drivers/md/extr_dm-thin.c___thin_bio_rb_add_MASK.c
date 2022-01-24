#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct rb_node* rb_node; } ;
struct thin_c {TYPE_4__ sort_bio_list; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct dm_thin_endio_hook {int /*<<< orphan*/  rb_node; } ;
struct TYPE_5__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ bi_sector; } ;
struct TYPE_7__ {TYPE_2__ bi_iter; } ;

/* Variables and functions */
 struct dm_thin_endio_hook* FUNC0 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 TYPE_3__* FUNC3 (struct dm_thin_endio_hook*) ; 
 struct dm_thin_endio_hook* FUNC4 (struct rb_node*) ; 

__attribute__((used)) static void FUNC5(struct thin_c *tc, struct bio *bio)
{
	struct rb_node **rbp, *parent;
	struct dm_thin_endio_hook *pbd;
	sector_t bi_sector = bio->bi_iter.bi_sector;

	rbp = &tc->sort_bio_list.rb_node;
	parent = NULL;
	while (*rbp) {
		parent = *rbp;
		pbd = FUNC4(parent);

		if (bi_sector < FUNC3(pbd)->bi_iter.bi_sector)
			rbp = &(*rbp)->rb_left;
		else
			rbp = &(*rbp)->rb_right;
	}

	pbd = FUNC0(bio, sizeof(struct dm_thin_endio_hook));
	FUNC2(&pbd->rb_node, parent, rbp);
	FUNC1(&pbd->rb_node, &tc->sort_bio_list);
}