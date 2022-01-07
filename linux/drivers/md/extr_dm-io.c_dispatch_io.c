
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct dpages {int dummy; } ;
struct dm_io_region {scalar_t__ count; } ;


 int BUG_ON (int) ;
 unsigned int DM_IO_MAX_REGIONS ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int dec_count (struct io*,int ,int ) ;
 int do_region (int,int,int,struct dm_io_region*,struct dpages*,struct io*) ;

__attribute__((used)) static void dispatch_io(int op, int op_flags, unsigned int num_regions,
   struct dm_io_region *where, struct dpages *dp,
   struct io *io, int sync)
{
 int i;
 struct dpages old_pages = *dp;

 BUG_ON(num_regions > DM_IO_MAX_REGIONS);

 if (sync)
  op_flags |= REQ_SYNC;





 for (i = 0; i < num_regions; i++) {
  *dp = old_pages;
  if (where[i].count || (op_flags & REQ_PREFLUSH))
   do_region(op, op_flags, i, where + i, dp, io);
 }





 dec_count(io, 0, 0);
}
