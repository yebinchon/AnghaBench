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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  root; } ;
struct writeset {TYPE_1__ md; int /*<<< orphan*/  bits; } ;
struct dm_disk_bitset {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dm_disk_bitset*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dm_disk_bitset *info,
				 struct writeset *ws, uint32_t block)
{
	int r;

	if (!FUNC1(block, ws->bits)) {
		r = FUNC0(info, ws->md.root, block, &ws->md.root);
		if (r) {
			/* FIXME: fail mode */
			return r;
		}

		return 0;
	}

	return 1;
}