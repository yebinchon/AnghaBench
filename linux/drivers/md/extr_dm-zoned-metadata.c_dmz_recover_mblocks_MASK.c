#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct dmz_metadata {int nr_meta_zones; int nr_meta_blocks; TYPE_1__* sb; TYPE_2__* dev; int /*<<< orphan*/  sb_zone; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int zone_nr_blocks_shift; } ;
struct TYPE_4__ {TYPE_3__* mblk; int /*<<< orphan*/  sb; scalar_t__ block; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,unsigned int) ; 
 int FUNC4 (struct dmz_metadata*,int /*<<< orphan*/ ,scalar_t__,struct page*) ; 
 scalar_t__ FUNC5 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dmz_metadata*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct dmz_metadata *zmd, unsigned int dst_set)
{
	unsigned int src_set = dst_set ^ 0x1;
	struct page *page;
	int i, ret;

	FUNC3(zmd->dev, "Metadata set %u invalid: recovering", dst_set);

	if (dst_set == 0)
		zmd->sb[0].block = FUNC5(zmd, zmd->sb_zone);
	else {
		zmd->sb[1].block = zmd->sb[0].block +
			(zmd->nr_meta_zones << zmd->dev->zone_nr_blocks_shift);
	}

	page = FUNC1(GFP_NOIO);
	if (!page)
		return -ENOMEM;

	/* Copy metadata blocks */
	for (i = 1; i < zmd->nr_meta_blocks; i++) {
		ret = FUNC4(zmd, REQ_OP_READ,
				     zmd->sb[src_set].block + i, page);
		if (ret)
			goto out;
		ret = FUNC4(zmd, REQ_OP_WRITE,
				     zmd->sb[dst_set].block + i, page);
		if (ret)
			goto out;
	}

	/* Finalize with the super block */
	if (!zmd->sb[dst_set].mblk) {
		zmd->sb[dst_set].mblk = FUNC2(zmd, 0);
		if (!zmd->sb[dst_set].mblk) {
			ret = -ENOMEM;
			goto out;
		}
		zmd->sb[dst_set].sb = zmd->sb[dst_set].mblk->data;
	}

	ret = FUNC6(zmd, dst_set);
out:
	FUNC0(page, 0);

	return ret;
}