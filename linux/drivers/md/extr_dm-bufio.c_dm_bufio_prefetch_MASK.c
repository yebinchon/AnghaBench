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
struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_PREFETCH ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 struct dm_buffer* FUNC2 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_endio ; 
 int /*<<< orphan*/  FUNC12 (struct dm_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  write_list ; 

void FUNC14(struct dm_bufio_client *c,
		       sector_t block, unsigned n_blocks)
{
	struct blk_plug plug;

	FUNC1(write_list);

	FUNC0(FUNC7());

	FUNC5(&plug);
	FUNC8(c);

	for (; n_blocks--; block++) {
		int need_submit;
		struct dm_buffer *b;
		b = FUNC2(c, block, NF_PREFETCH, &need_submit,
				&write_list);
		if (FUNC13(!FUNC11(&write_list))) {
			FUNC10(c);
			FUNC4(&plug);
			FUNC3(&write_list);
			FUNC5(&plug);
			FUNC8(c);
		}
		if (FUNC13(b != NULL)) {
			FUNC10(c);

			if (need_submit)
				FUNC12(b, REQ_OP_READ, read_endio);
			FUNC9(b);

			FUNC6();

			if (!n_blocks)
				goto flush_plug;
			FUNC8(c);
		}
	}

	FUNC10(c);

flush_plug:
	FUNC4(&plug);
}