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
struct clone {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_flush_bios; int /*<<< orphan*/  deferred_bios; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio_list BIO_EMPTY_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct bio_list*,struct bio*) ; 
 scalar_t__ FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 scalar_t__ FUNC4 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct clone*) ; 

__attribute__((used)) static void FUNC8(struct clone *clone, struct bio_list *bios)
{
	struct bio *bio;
	unsigned long flags;
	struct bio_list flush_bios = BIO_EMPTY_LIST;
	struct bio_list normal_bios = BIO_EMPTY_LIST;

	if (FUNC1(bios))
		return;

	while ((bio = FUNC3(bios))) {
		if (FUNC4(clone, bio))
			FUNC0(&flush_bios, bio);
		else
			FUNC0(&normal_bios, bio);
	}

	FUNC5(&clone->lock, flags);
	FUNC2(&clone->deferred_bios, &normal_bios);
	FUNC2(&clone->deferred_flush_bios, &flush_bios);
	FUNC6(&clone->lock, flags);

	FUNC7(clone);
}