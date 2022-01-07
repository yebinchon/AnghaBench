
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct discard_op {int * bio; struct bio* parent_bio; int plug; struct thin_c* tc; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 int blk_start_plug (int *) ;

__attribute__((used)) static void begin_discard(struct discard_op *op, struct thin_c *tc, struct bio *parent)
{
 BUG_ON(!parent);

 op->tc = tc;
 blk_start_plug(&op->plug);
 op->parent_bio = parent;
 op->bio = ((void*)0);
}
