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
struct etr_perf_buffer {unsigned long head; long nr_pages; scalar_t__ pages; struct etr_buf* etr_buf; } ;
struct etr_buf {unsigned long size; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 
 long FUNC2 (long,long) ; 
 long FUNC3 (struct etr_buf*,unsigned long,unsigned long,char**) ; 

__attribute__((used)) static void FUNC4(struct etr_perf_buffer *etr_perf,
				     unsigned long src_offset,
				     unsigned long to_copy)
{
	long bytes;
	long pg_idx, pg_offset;
	unsigned long head = etr_perf->head;
	char **dst_pages, *src_buf;
	struct etr_buf *etr_buf = etr_perf->etr_buf;

	head = etr_perf->head;
	pg_idx = head >> PAGE_SHIFT;
	pg_offset = head & (PAGE_SIZE - 1);
	dst_pages = (char **)etr_perf->pages;

	while (to_copy > 0) {
		/*
		 * In one iteration, we can copy minimum of :
		 *  1) what is available in the source buffer,
		 *  2) what is available in the source buffer, before it
		 *     wraps around.
		 *  3) what is available in the destination page.
		 * in one iteration.
		 */
		if (src_offset >= etr_buf->size)
			src_offset -= etr_buf->size;
		bytes = FUNC3(etr_buf, src_offset, to_copy,
					     &src_buf);
		if (FUNC0(bytes <= 0))
			break;
		bytes = FUNC2(bytes, (long)(PAGE_SIZE - pg_offset));

		FUNC1(dst_pages[pg_idx] + pg_offset, src_buf, bytes);

		to_copy -= bytes;

		/* Move destination pointers */
		pg_offset += bytes;
		if (pg_offset == PAGE_SIZE) {
			pg_offset = 0;
			if (++pg_idx == etr_perf->nr_pages)
				pg_idx = 0;
		}

		/* Move source pointers */
		src_offset += bytes;
	}
}