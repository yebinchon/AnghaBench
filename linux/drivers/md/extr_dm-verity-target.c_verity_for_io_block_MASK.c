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
struct scatterlist {int dummy; } ;
struct dm_verity_io {int dummy; } ;
struct dm_verity {int data_dev_block_bits; TYPE_1__* ti; } ;
struct crypto_wait {int dummy; } ;
struct bvec_iter {int dummy; } ;
struct bio_vec {unsigned int bv_len; int /*<<< orphan*/  bv_offset; int /*<<< orphan*/  bv_page; } ;
struct bio {int dummy; } ;
struct ahash_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  per_io_data_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bvec_iter*,unsigned int) ; 
 struct bio_vec FUNC3 (struct bio*,struct bvec_iter) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 struct bio* FUNC6 (struct dm_verity_io*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 struct ahash_request* FUNC11 (struct dm_verity*,struct dm_verity_io*) ; 

__attribute__((used)) static int FUNC12(struct dm_verity *v, struct dm_verity_io *io,
			       struct bvec_iter *iter, struct crypto_wait *wait)
{
	unsigned int todo = 1 << v->data_dev_block_bits;
	struct bio *bio = FUNC6(io, v->ti->per_io_data_size);
	struct scatterlist sg;
	struct ahash_request *req = FUNC11(v, io);

	do {
		int r;
		unsigned int len;
		struct bio_vec bv = FUNC3(bio, *iter);

		FUNC8(&sg, 1);

		len = bv.bv_len;

		if (FUNC7(len >= todo))
			len = todo;
		/*
		 * Operating on a single page at a time looks suboptimal
		 * until you consider the typical block size is 4,096B.
		 * Going through this loops twice should be very rare.
		 */
		FUNC9(&sg, bv.bv_page, len, bv.bv_offset);
		FUNC1(req, &sg, NULL, len);
		r = FUNC5(FUNC4(req), wait);

		if (FUNC10(r < 0)) {
			FUNC0("verity_for_io_block crypto op failed: %d", r);
			return r;
		}

		FUNC2(bio, iter, len);
		todo -= len;
	} while (todo);

	return 0;
}