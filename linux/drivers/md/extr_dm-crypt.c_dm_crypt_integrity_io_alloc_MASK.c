#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_crypt_io {int /*<<< orphan*/  integrity_metadata; scalar_t__ sector; TYPE_2__* cc; } ;
struct TYPE_3__ {unsigned int bi_size; scalar_t__ bi_sector; } ;
struct bio_integrity_payload {TYPE_1__ bip_iter; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {unsigned int on_disk_tag_size; unsigned int sector_shift; scalar_t__ start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct bio_integrity_payload*) ; 
 int FUNC1 (struct bio_integrity_payload*) ; 
 int FUNC2 (struct bio*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct bio_integrity_payload* FUNC3 (struct bio*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dm_crypt_io *io, struct bio *bio)
{
	struct bio_integrity_payload *bip;
	unsigned int tag_len;
	int ret;

	if (!FUNC4(bio) || !io->cc->on_disk_tag_size)
		return 0;

	bip = FUNC3(bio, GFP_NOIO, 1);
	if (FUNC0(bip))
		return FUNC1(bip);

	tag_len = io->cc->on_disk_tag_size * (FUNC4(bio) >> io->cc->sector_shift);

	bip->bip_iter.bi_size = tag_len;
	bip->bip_iter.bi_sector = io->cc->start + io->sector;

	ret = FUNC2(bio, FUNC7(io->integrity_metadata),
				     tag_len, FUNC5(io->integrity_metadata));
	if (FUNC6(ret != tag_len))
		return -ENOMEM;

	return 0;
}