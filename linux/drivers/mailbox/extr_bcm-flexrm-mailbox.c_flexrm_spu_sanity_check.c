
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int length; } ;
struct TYPE_2__ {struct scatterlist* dst; struct scatterlist* src; } ;
struct brcm_message {TYPE_1__ spu; } ;


 int DST_LENGTH_MASK ;
 int MDST_LENGTH_MASK ;
 int MSRC_LENGTH_MASK ;
 int SRC_LENGTH_MASK ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static bool flexrm_spu_sanity_check(struct brcm_message *msg)
{
 struct scatterlist *sg;

 if (!msg->spu.src || !msg->spu.dst)
  return 0;
 for (sg = msg->spu.src; sg; sg = sg_next(sg)) {
  if (sg->length & 0xf) {
   if (sg->length > SRC_LENGTH_MASK)
    return 0;
  } else {
   if (sg->length > (MSRC_LENGTH_MASK * 16))
    return 0;
  }
 }
 for (sg = msg->spu.dst; sg; sg = sg_next(sg)) {
  if (sg->length & 0xf) {
   if (sg->length > DST_LENGTH_MASK)
    return 0;
  } else {
   if (sg->length > (MDST_LENGTH_MASK * 16))
    return 0;
  }
 }

 return 1;
}
