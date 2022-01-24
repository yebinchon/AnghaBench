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
struct era_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  sm; int /*<<< orphan*/  era_array_root; int /*<<< orphan*/  era_array_info; int /*<<< orphan*/  writeset_tree_root; int /*<<< orphan*/  writeset_tree_info; int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUPERBLOCK_LOCATION ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct era_metadata*) ; 

__attribute__((used)) static int FUNC7(struct era_metadata *md)
{
	int r;

	r = FUNC4(md->bm, SUPERBLOCK_LOCATION,
				 &md->tm, &md->sm);
	if (r < 0) {
		FUNC0("dm_tm_create_with_sm failed");
		return r;
	}

	FUNC6(md);

	r = FUNC2(&md->writeset_tree_info, &md->writeset_tree_root);
	if (r) {
		FUNC0("couldn't create new writeset tree");
		goto bad;
	}

	r = FUNC1(&md->era_array_info, &md->era_array_root);
	if (r) {
		FUNC0("couldn't create era array");
		goto bad;
	}

	return 0;

bad:
	FUNC3(md->sm);
	FUNC5(md->tm);

	return r;
}