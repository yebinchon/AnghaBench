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
struct era_metadata {int /*<<< orphan*/  bm; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DM_ERA_METADATA_BLOCK_SIZE ; 
 int /*<<< orphan*/  ERA_MAX_CONCURRENT_LOCKS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct era_metadata*,int) ; 

__attribute__((used)) static int FUNC6(struct era_metadata *md,
					  bool may_format)
{
	int r;

	md->bm = FUNC3(md->bdev, DM_ERA_METADATA_BLOCK_SIZE,
					 ERA_MAX_CONCURRENT_LOCKS);
	if (FUNC1(md->bm)) {
		FUNC0("could not create block manager");
		return FUNC2(md->bm);
	}

	r = FUNC5(md, may_format);
	if (r)
		FUNC4(md->bm);

	return r;
}