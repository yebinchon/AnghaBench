
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stm32_cryp {TYPE_1__* out_sg; int out_walk; } ;
struct TYPE_5__ {scalar_t__ length; } ;


 scalar_t__ _walked_out ;
 int scatterwalk_advance (int *,unsigned int) ;
 int scatterwalk_start (int *,TYPE_1__*) ;
 TYPE_1__* sg_next (TYPE_1__*) ;
 int * sg_virt (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 *stm32_cryp_next_out(struct stm32_cryp *cryp, u32 *dst,
    unsigned int n)
{
 scatterwalk_advance(&cryp->out_walk, n);

 if (unlikely(cryp->out_sg->length == _walked_out)) {
  cryp->out_sg = sg_next(cryp->out_sg);
  if (cryp->out_sg) {
   scatterwalk_start(&cryp->out_walk, cryp->out_sg);
   return (sg_virt(cryp->out_sg) + _walked_out);
  }
 }

 return (u32 *)((u8 *)dst + n);
}
