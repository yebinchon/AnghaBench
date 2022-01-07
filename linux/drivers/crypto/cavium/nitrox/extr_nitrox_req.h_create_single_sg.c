
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sg_set_buf (struct scatterlist*,void*,int) ;

__attribute__((used)) static inline struct scatterlist *create_single_sg(struct scatterlist *sg,
         void *buf, int buflen)
{
 sg_set_buf(sg, buf, buflen);
 sg++;
 return sg;
}
