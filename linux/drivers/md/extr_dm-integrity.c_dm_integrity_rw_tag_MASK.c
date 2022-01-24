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
struct dm_integrity_c {unsigned int log2_buffer_sectors; int /*<<< orphan*/  bufio; } ;
struct dm_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 unsigned int SECTOR_SHIFT ; 
 int TAG_READ ; 
 int TAG_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*,unsigned int,unsigned int) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_buffer**) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_buffer*) ; 
 int FUNC5 (struct dm_integrity_c*) ; 
 int FUNC6 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,unsigned int) ; 
 unsigned int FUNC8 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct dm_integrity_c *ic, unsigned char *tag, sector_t *metadata_block,
			       unsigned *metadata_offset, unsigned total_size, int op)
{
	do {
		unsigned char *data, *dp;
		struct dm_buffer *b;
		unsigned to_copy;
		int r;

		r = FUNC5(ic);
		if (FUNC9(r))
			return r;

		data = FUNC3(ic->bufio, *metadata_block, &b);
		if (FUNC0(data))
			return FUNC1(data);

		to_copy = FUNC8((1U << SECTOR_SHIFT << ic->log2_buffer_sectors) - *metadata_offset, total_size);
		dp = data + *metadata_offset;
		if (op == TAG_READ) {
			FUNC7(tag, dp, to_copy);
		} else if (op == TAG_WRITE) {
			FUNC7(dp, tag, to_copy);
			FUNC2(b, *metadata_offset, *metadata_offset + to_copy);
		} else  {
			/* e.g.: op == TAG_CMP */
			if (FUNC9(FUNC6(dp, tag, to_copy))) {
				unsigned i;

				for (i = 0; i < to_copy; i++) {
					if (dp[i] != tag[i])
						break;
					total_size--;
				}
				FUNC4(b);
				return total_size;
			}
		}
		FUNC4(b);

		tag += to_copy;
		*metadata_offset += to_copy;
		if (FUNC9(*metadata_offset == 1U << SECTOR_SHIFT << ic->log2_buffer_sectors)) {
			(*metadata_block)++;
			*metadata_offset = 0;
		}
		total_size -= to_copy;
	} while (FUNC9(total_size));

	return 0;
}