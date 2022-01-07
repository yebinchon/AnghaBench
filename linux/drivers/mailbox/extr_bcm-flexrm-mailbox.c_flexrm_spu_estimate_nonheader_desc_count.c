
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scatterlist {unsigned int length; } ;
struct TYPE_2__ {struct scatterlist* dst; struct scatterlist* src; } ;
struct brcm_message {TYPE_1__ spu; } ;


 unsigned int UINT_MAX ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static u32 flexrm_spu_estimate_nonheader_desc_count(struct brcm_message *msg)
{
 u32 cnt = 0;
 unsigned int dst_target = 0;
 struct scatterlist *src_sg = msg->spu.src, *dst_sg = msg->spu.dst;

 while (src_sg || dst_sg) {
  if (src_sg) {
   cnt++;
   dst_target = src_sg->length;
   src_sg = sg_next(src_sg);
  } else
   dst_target = UINT_MAX;

  while (dst_target && dst_sg) {
   cnt++;
   if (dst_sg->length < dst_target)
    dst_target -= dst_sg->length;
   else
    dst_target = 0;
   dst_sg = sg_next(dst_sg);
  }
 }

 return cnt;
}
