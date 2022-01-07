
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 struct scatterlist* ____sg_next (struct scatterlist*) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;

__attribute__((used)) static inline struct scatterlist *__sg_next(struct scatterlist *sg)
{
 return sg_is_last(sg) ? ((void*)0) : ____sg_next(sg);
}
