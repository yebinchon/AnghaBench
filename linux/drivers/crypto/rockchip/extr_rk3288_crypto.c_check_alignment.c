
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;


 scalar_t__ IS_ALIGNED (int ,int) ;

__attribute__((used)) static int check_alignment(struct scatterlist *sg_src,
      struct scatterlist *sg_dst,
      int align_mask)
{
 int in, out, align;

 in = IS_ALIGNED((uint32_t)sg_src->offset, 4) &&
      IS_ALIGNED((uint32_t)sg_src->length, align_mask);
 if (!sg_dst)
  return in;
 out = IS_ALIGNED((uint32_t)sg_dst->offset, 4) &&
       IS_ALIGNED((uint32_t)sg_dst->length, align_mask);
 align = in && out;

 return (align && (sg_src->length == sg_dst->length));
}
