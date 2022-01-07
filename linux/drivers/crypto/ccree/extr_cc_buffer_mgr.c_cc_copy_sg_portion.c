
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum cc_sg_cpy_direct { ____Placeholder_cc_sg_cpy_direct } cc_sg_cpy_direct ;


 int CC_SG_TO_BUF ;
 int sg_copy_buffer (struct scatterlist*,scalar_t__,void*,scalar_t__,scalar_t__,int) ;
 scalar_t__ sg_nents_for_len (struct scatterlist*,scalar_t__) ;

void cc_copy_sg_portion(struct device *dev, u8 *dest, struct scatterlist *sg,
   u32 to_skip, u32 end, enum cc_sg_cpy_direct direct)
{
 u32 nents;

 nents = sg_nents_for_len(sg, end);
 sg_copy_buffer(sg, nents, (void *)dest, (end - to_skip + 1), to_skip,
         (direct == CC_SG_TO_BUF));
}
