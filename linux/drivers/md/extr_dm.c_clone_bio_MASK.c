#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int bi_sector; int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_3__ bi_iter; } ;
struct dm_target_io {TYPE_2__* ti; TYPE_1__* io; struct bio clone; } ;
typedef  unsigned int sector_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_4__* type; } ;
struct TYPE_6__ {int /*<<< orphan*/  md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int FUNC4 (struct bio*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct dm_target_io *tio, struct bio *bio,
		     sector_t sector, unsigned len)
{
	struct bio *clone = &tio->clone;

	FUNC1(clone, bio);

	if (FUNC3(bio)) {
		int r;

		if (FUNC10(!FUNC7(tio->ti->type) &&
			     !FUNC8(tio->ti->type))) {
			FUNC0("%s: the target %s doesn't support integrity data.",
				FUNC6(tio->io->md),
				tio->ti->type->name);
			return -EIO;
		}

		r = FUNC4(clone, bio, GFP_NOIO);
		if (r < 0)
			return r;
	}

	FUNC2(clone, FUNC9(sector - clone->bi_iter.bi_sector));
	clone->bi_iter.bi_size = FUNC9(len);

	if (FUNC3(bio))
		FUNC5(clone);

	return 0;
}