
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,unsigned int) ;
 int sg_virt (struct scatterlist*) ;

__attribute__((used)) static inline struct scatterlist *create_multi_sg(struct scatterlist *to_sg,
        struct scatterlist *from_sg,
        int buflen)
{
 struct scatterlist *sg = to_sg;
 unsigned int sglen;

 for (; buflen && from_sg; buflen -= sglen) {
  sglen = from_sg->length;
  if (sglen > buflen)
   sglen = buflen;

  sg_set_buf(sg, sg_virt(from_sg), sglen);
  from_sg = sg_next(from_sg);
  sg++;
 }

 return sg;
}
