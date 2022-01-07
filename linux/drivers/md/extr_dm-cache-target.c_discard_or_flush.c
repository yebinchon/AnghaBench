
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_opf; } ;


 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ op_is_flush (int ) ;

__attribute__((used)) static bool discard_or_flush(struct bio *bio)
{
 return bio_op(bio) == REQ_OP_DISCARD || op_is_flush(bio->bi_opf);
}
