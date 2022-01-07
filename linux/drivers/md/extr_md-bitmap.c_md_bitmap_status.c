
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct bitmap_counts {int pages; int missing_pages; } ;
struct TYPE_6__ {scalar_t__ file; } ;
struct bitmap {TYPE_3__ storage; TYPE_2__* mddev; struct bitmap_counts counts; } ;
struct TYPE_4__ {int chunksize; } ;
struct TYPE_5__ {TYPE_1__ bitmap_info; } ;


 int PAGE_SHIFT ;
 int seq_file_path (struct seq_file*,scalar_t__,char*) ;
 int seq_printf (struct seq_file*,char*,...) ;

void md_bitmap_status(struct seq_file *seq, struct bitmap *bitmap)
{
 unsigned long chunk_kb;
 struct bitmap_counts *counts;

 if (!bitmap)
  return;

 counts = &bitmap->counts;

 chunk_kb = bitmap->mddev->bitmap_info.chunksize >> 10;
 seq_printf(seq, "bitmap: %lu/%lu pages [%luKB], "
     "%lu%s chunk",
     counts->pages - counts->missing_pages,
     counts->pages,
     (counts->pages - counts->missing_pages)
     << (PAGE_SHIFT - 10),
     chunk_kb ? chunk_kb : bitmap->mddev->bitmap_info.chunksize,
     chunk_kb ? "KB" : "B");
 if (bitmap->storage.file) {
  seq_printf(seq, ", file: ");
  seq_file_path(seq, bitmap->storage.file, " \t\n");
 }

 seq_printf(seq, "\n");
}
