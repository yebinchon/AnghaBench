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
struct page {int dummy; } ;
struct dmz_metadata {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BLOCK_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int REQ_META ; 
 int REQ_PRIO ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bio*) ; 

__attribute__((used)) static int FUNC8(struct dmz_metadata *zmd, int op, sector_t block,
			  struct page *page)
{
	struct bio *bio;
	int ret;

	if (FUNC5(zmd->dev))
		return -EIO;

	bio = FUNC1(GFP_NOIO, 1);
	if (!bio)
		return -ENOMEM;

	bio->bi_iter.bi_sector = FUNC6(block);
	FUNC3(bio, zmd->dev->bdev);
	FUNC4(bio, op, REQ_SYNC | REQ_META | REQ_PRIO);
	FUNC0(bio, page, DMZ_BLOCK_SIZE, 0);
	ret = FUNC7(bio);
	FUNC2(bio);

	return ret;
}