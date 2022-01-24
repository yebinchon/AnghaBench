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
struct bvec_iter {int dummy; } ;
struct dm_verity_io {unsigned int n_blocks; struct bvec_iter iter; scalar_t__ block; struct dm_verity* v; } ;
struct dm_verity {int /*<<< orphan*/  validated_blocks; int /*<<< orphan*/  digest_size; } ;
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM_VERITY_BLOCK_TYPE_DATA ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_verity*,struct dm_verity_io*,struct bvec_iter*) ; 
 int /*<<< orphan*/  verity_bv_zero ; 
 scalar_t__ FUNC6 (struct dm_verity*,struct dm_verity_io*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct bvec_iter*) ; 
 int FUNC7 (struct dm_verity*,struct dm_verity_io*,struct bvec_iter*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dm_verity*,struct dm_verity_io*,struct bvec_iter*,struct crypto_wait*) ; 
 scalar_t__ FUNC9 (struct dm_verity*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (struct dm_verity*,struct ahash_request*,int /*<<< orphan*/ ,struct crypto_wait*) ; 
 int FUNC11 (struct dm_verity*,struct dm_verity_io*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (struct dm_verity*,struct ahash_request*,struct crypto_wait*) ; 
 struct ahash_request* FUNC13 (struct dm_verity*,struct dm_verity_io*) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_verity*,struct dm_verity_io*) ; 
 int /*<<< orphan*/  FUNC15 (struct dm_verity*,struct dm_verity_io*) ; 

__attribute__((used)) static int FUNC16(struct dm_verity_io *io)
{
	bool is_zero;
	struct dm_verity *v = io->v;
	struct bvec_iter start;
	unsigned b;
	struct crypto_wait wait;

	for (b = 0; b < io->n_blocks; b++) {
		int r;
		sector_t cur_block = io->block + b;
		struct ahash_request *req = FUNC13(v, io);

		if (v->validated_blocks &&
		    FUNC0(FUNC3(cur_block, v->validated_blocks))) {
			FUNC5(v, io, &io->iter);
			continue;
		}

		r = FUNC11(v, io, cur_block,
					  FUNC15(v, io),
					  &is_zero);
		if (FUNC4(r < 0))
			return r;

		if (is_zero) {
			/*
			 * If we expect a zero block, don't validate, just
			 * return zeros.
			 */
			r = FUNC7(v, io, &io->iter,
						verity_bv_zero);
			if (FUNC4(r < 0))
				return r;

			continue;
		}

		r = FUNC12(v, req, &wait);
		if (FUNC4(r < 0))
			return r;

		start = io->iter;
		r = FUNC8(v, io, &io->iter, &wait);
		if (FUNC4(r < 0))
			return r;

		r = FUNC10(v, req, FUNC14(v, io),
					&wait);
		if (FUNC4(r < 0))
			return r;

		if (FUNC0(FUNC1(FUNC14(v, io),
				  FUNC15(v, io), v->digest_size) == 0)) {
			if (v->validated_blocks)
				FUNC2(cur_block, v->validated_blocks);
			continue;
		}
		else if (FUNC6(v, io, DM_VERITY_BLOCK_TYPE_DATA,
					   cur_block, NULL, &start) == 0)
			continue;
		else if (FUNC9(v, DM_VERITY_BLOCK_TYPE_DATA,
					   cur_block))
			return -EIO;
	}

	return 0;
}