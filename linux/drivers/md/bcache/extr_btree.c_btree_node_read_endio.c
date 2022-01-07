
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int dummy; } ;
struct bio {struct closure* bi_private; } ;


 int closure_put (struct closure*) ;

__attribute__((used)) static void btree_node_read_endio(struct bio *bio)
{
 struct closure *cl = bio->bi_private;

 closure_put(cl);
}
