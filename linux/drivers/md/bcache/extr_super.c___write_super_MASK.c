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
struct cache_sb {unsigned int first_bucket; unsigned int keys; void* seq; void* flags; void* version; int /*<<< orphan*/  csum; void** d; int /*<<< orphan*/  last_mount; int /*<<< orphan*/  label; int /*<<< orphan*/  set_uuid; int /*<<< orphan*/  uuid; void* offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 int SB_LABEL_SIZE ; 
 int /*<<< orphan*/  SB_SECTOR ; 
 int /*<<< orphan*/  SB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_sb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cache_sb* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*) ; 

__attribute__((used)) static void FUNC11(struct cache_sb *sb, struct bio *bio)
{
	struct cache_sb *out = FUNC8(FUNC1(bio));
	unsigned int i;

	bio->bi_iter.bi_sector	= SB_SECTOR;
	bio->bi_iter.bi_size	= SB_SIZE;
	FUNC2(bio, REQ_OP_WRITE, REQ_SYNC|REQ_META);
	FUNC0(bio, NULL);

	out->offset		= FUNC5(sb->offset);
	out->version		= FUNC5(sb->version);

	FUNC7(out->uuid,	sb->uuid, 16);
	FUNC7(out->set_uuid,	sb->set_uuid, 16);
	FUNC7(out->label,	sb->label, SB_LABEL_SIZE);

	out->flags		= FUNC5(sb->flags);
	out->seq		= FUNC5(sb->seq);

	out->last_mount		= FUNC4(sb->last_mount);
	out->first_bucket	= FUNC3(sb->first_bucket);
	out->keys		= FUNC3(sb->keys);

	for (i = 0; i < sb->keys; i++)
		out->d[i] = FUNC5(sb->d[i]);

	out->csum = FUNC6(out);

	FUNC9("ver %llu, flags %llu, seq %llu",
		 sb->version, sb->flags, sb->seq);

	FUNC10(bio);
}