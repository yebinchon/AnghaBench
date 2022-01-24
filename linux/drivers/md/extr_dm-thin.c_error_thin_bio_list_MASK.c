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
struct thin_c {int /*<<< orphan*/  lock; } ;
struct bio_list {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_list*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct thin_c *tc, struct bio_list *master,
		blk_status_t error)
{
	struct bio_list bios;
	unsigned long flags;

	FUNC1(&bios);

	FUNC3(&tc->lock, flags);
	FUNC0(&bios, master);
	FUNC4(&tc->lock, flags);

	FUNC2(&bios, error);
}