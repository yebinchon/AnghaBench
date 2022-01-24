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
struct clone {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_bios; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 struct bio_list BIO_EMPTY_LIST ; 
 scalar_t__ FUNC0 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_list*) ; 

__attribute__((used)) static void FUNC6(struct clone *clone)
{
	unsigned long flags;
	struct bio_list bios = BIO_EMPTY_LIST;

	FUNC3(&clone->lock, flags);
	FUNC2(&bios, &clone->deferred_bios);
	FUNC1(&clone->deferred_bios);
	FUNC4(&clone->lock, flags);

	if (FUNC0(&bios))
		return;

	FUNC5(&bios);
}