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
struct seq_file {int dummy; } ;
struct bitmap_counts {int pages; int missing_pages; } ;
struct TYPE_6__ {scalar_t__ file; } ;
struct bitmap {TYPE_3__ storage; TYPE_2__* mddev; struct bitmap_counts counts; } ;
struct TYPE_4__ {int chunksize; } ;
struct TYPE_5__ {TYPE_1__ bitmap_info; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

void FUNC2(struct seq_file *seq, struct bitmap *bitmap)
{
	unsigned long chunk_kb;
	struct bitmap_counts *counts;

	if (!bitmap)
		return;

	counts = &bitmap->counts;

	chunk_kb = bitmap->mddev->bitmap_info.chunksize >> 10;
	FUNC1(seq, "bitmap: %lu/%lu pages [%luKB], "
		   "%lu%s chunk",
		   counts->pages - counts->missing_pages,
		   counts->pages,
		   (counts->pages - counts->missing_pages)
		   << (PAGE_SHIFT - 10),
		   chunk_kb ? chunk_kb : bitmap->mddev->bitmap_info.chunksize,
		   chunk_kb ? "KB" : "B");
	if (bitmap->storage.file) {
		FUNC1(seq, ", file: ");
		FUNC0(seq, bitmap->storage.file, " \t\n");
	}

	FUNC1(seq, "\n");
}