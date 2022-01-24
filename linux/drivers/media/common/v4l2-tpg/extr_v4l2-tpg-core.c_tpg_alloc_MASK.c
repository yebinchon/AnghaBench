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
struct tpg_data {unsigned int max_line_width; void** random_line; void** black_line; void** contrast_line; void*** downsampled_lines; void*** lines; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int TPG_MAX_PAT_LINES ; 
 unsigned int TPG_MAX_PLANES ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct tpg_data *tpg, unsigned max_w)
{
	unsigned pat;
	unsigned plane;

	tpg->max_line_width = max_w;
	for (pat = 0; pat < TPG_MAX_PAT_LINES; pat++) {
		for (plane = 0; plane < TPG_MAX_PLANES; plane++) {
			unsigned pixelsz = plane ? 2 : 4;

			tpg->lines[pat][plane] =
				FUNC2(FUNC0(max_w, 2, pixelsz));
			if (!tpg->lines[pat][plane])
				return -ENOMEM;
			if (plane == 0)
				continue;
			tpg->downsampled_lines[pat][plane] =
				FUNC2(FUNC0(max_w, 2, pixelsz));
			if (!tpg->downsampled_lines[pat][plane])
				return -ENOMEM;
		}
	}
	for (plane = 0; plane < TPG_MAX_PLANES; plane++) {
		unsigned pixelsz = plane ? 2 : 4;

		tpg->contrast_line[plane] =
			FUNC2(FUNC1(pixelsz, max_w));
		if (!tpg->contrast_line[plane])
			return -ENOMEM;
		tpg->black_line[plane] =
			FUNC2(FUNC1(pixelsz, max_w));
		if (!tpg->black_line[plane])
			return -ENOMEM;
		tpg->random_line[plane] =
			FUNC2(FUNC0(max_w, 2, pixelsz));
		if (!tpg->random_line[plane])
			return -ENOMEM;
	}
	return 0;
}