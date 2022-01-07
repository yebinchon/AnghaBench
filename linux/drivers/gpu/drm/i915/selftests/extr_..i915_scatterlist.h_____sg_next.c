
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 struct scatterlist* sg_chain_ptr (struct scatterlist*) ;
 int sg_is_chain (struct scatterlist*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline struct scatterlist *____sg_next(struct scatterlist *sg)
{
 ++sg;
 if (unlikely(sg_is_chain(sg)))
  sg = sg_chain_ptr(sg);
 return sg;
}
