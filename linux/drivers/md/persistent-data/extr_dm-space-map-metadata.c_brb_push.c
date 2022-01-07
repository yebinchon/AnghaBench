
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bop_ring_buffer {int end; unsigned int begin; struct block_op* bops; } ;
struct block_op {int type; int block; } ;
typedef enum block_op_type { ____Placeholder_block_op_type } block_op_type ;
typedef int dm_block_t ;


 int ENOMEM ;
 unsigned int brb_next (struct bop_ring_buffer*,int) ;

__attribute__((used)) static int brb_push(struct bop_ring_buffer *brb,
      enum block_op_type type, dm_block_t b)
{
 struct block_op *bop;
 unsigned next = brb_next(brb, brb->end);





 if (next == brb->begin)
  return -ENOMEM;

 bop = brb->bops + brb->end;
 bop->type = type;
 bop->block = b;

 brb->end = next;

 return 0;
}
