
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;
struct bio {int dummy; } ;


 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ bio_op (struct bio*) ;

__attribute__((used)) static bool accountable_bio(struct cache *cache, struct bio *bio)
{
 return bio_op(bio) != REQ_OP_DISCARD;
}
