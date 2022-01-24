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
typedef  scalar_t__ u64 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity_fec_io {unsigned int nbufs; int /*<<< orphan*/  output; } ;
struct dm_verity {int data_dev_block_bits; TYPE_1__* data_dev; int /*<<< orphan*/  digest_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long long,int) ; 
 unsigned int DM_VERITY_FEC_BUF_RS_BITS ; 
 int EILSEQ ; 
 int FUNC1 (struct dm_verity*,struct dm_verity_fec_io*) ; 
 int FUNC2 (struct dm_verity*,struct dm_verity_fec_io*,scalar_t__,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_verity*,struct dm_verity_fec_io*) ; 
 int FUNC4 (struct dm_verity*,struct dm_verity_io*,scalar_t__,scalar_t__,unsigned int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct dm_verity*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_verity*,struct dm_verity_io*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_verity*,struct dm_verity_io*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_verity*,struct dm_verity_io*) ; 

__attribute__((used)) static int FUNC11(struct dm_verity *v, struct dm_verity_io *io,
			  struct dm_verity_fec_io *fio, u64 rsb, u64 offset,
			  bool use_erasures)
{
	int r, neras = 0;
	unsigned pos;

	r = FUNC1(v, fio);
	if (FUNC6(r < 0))
		return r;

	for (pos = 0; pos < 1 << v->data_dev_block_bits; ) {
		FUNC3(v, fio);

		r = FUNC4(v, io, rsb, offset, pos,
				  use_erasures ? &neras : NULL);
		if (FUNC6(r < 0))
			return r;

		r = FUNC2(v, fio, rsb, r, pos, neras);
		if (r < 0)
			return r;

		pos += fio->nbufs << DM_VERITY_FEC_BUF_RS_BITS;
	}

	/* Always re-validate the corrected block against the expected hash */
	r = FUNC7(v, FUNC8(v, io), fio->output,
			1 << v->data_dev_block_bits,
			FUNC9(v, io));
	if (FUNC6(r < 0))
		return r;

	if (FUNC5(FUNC9(v, io), FUNC10(v, io),
		   v->digest_size)) {
		FUNC0("%s: FEC %llu: failed to correct (%d erasures)",
			    v->data_dev->name, (unsigned long long)rsb, neras);
		return -EILSEQ;
	}

	return 0;
}