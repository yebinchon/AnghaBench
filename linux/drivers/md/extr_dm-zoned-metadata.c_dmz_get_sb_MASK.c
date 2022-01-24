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
struct dmz_metadata {TYPE_1__* sb; } ;
struct dmz_mblock {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct dmz_mblock* mblk; int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dmz_mblock* FUNC0 (struct dmz_metadata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*,struct dmz_mblock*) ; 
 int FUNC2 (struct dmz_metadata*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct dmz_metadata *zmd, unsigned int set)
{
	struct dmz_mblock *mblk;
	int ret;

	/* Allocate a block */
	mblk = FUNC0(zmd, 0);
	if (!mblk)
		return -ENOMEM;

	zmd->sb[set].mblk = mblk;
	zmd->sb[set].sb = mblk->data;

	/* Read super block */
	ret = FUNC2(zmd, set);
	if (ret) {
		FUNC1(zmd, mblk);
		zmd->sb[set].mblk = NULL;
		return ret;
	}

	return 0;
}