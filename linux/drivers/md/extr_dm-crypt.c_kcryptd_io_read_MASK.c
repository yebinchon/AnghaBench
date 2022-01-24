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
struct dm_crypt_io {scalar_t__ sector; int /*<<< orphan*/  base_bio; struct crypt_config* cc; } ;
struct crypt_config {scalar_t__ start; int /*<<< orphan*/  bs; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_crypt_io*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_crypt_io*) ; 
 scalar_t__ FUNC5 (struct dm_crypt_io*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 

__attribute__((used)) static int FUNC7(struct dm_crypt_io *io, gfp_t gfp)
{
	struct crypt_config *cc = io->cc;
	struct bio *clone;

	/*
	 * We need the original biovec array in order to decrypt
	 * the whole bio data *afterwards* -- thanks to immutable
	 * biovecs we don't need to worry about the block layer
	 * modifying the biovec array; so leverage bio_clone_fast().
	 */
	clone = FUNC0(io->base_bio, gfp, &cc->bs);
	if (!clone)
		return 1;

	FUNC4(io);

	FUNC2(io, clone);
	clone->bi_iter.bi_sector = cc->start + io->sector;

	if (FUNC5(io, clone)) {
		FUNC3(io);
		FUNC1(clone);
		return 1;
	}

	FUNC6(clone);
	return 0;
}