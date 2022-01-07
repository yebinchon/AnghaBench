
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stm32_cryp {TYPE_1__* in_sg; int in_walk; } ;
struct TYPE_5__ {scalar_t__ length; } ;


 scalar_t__ _walked_in ;
 int scatterwalk_advance (int *,unsigned int) ;
 int scatterwalk_start (int *,TYPE_1__*) ;
 TYPE_1__* sg_next (TYPE_1__*) ;
 int * sg_virt (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 *stm32_cryp_next_in(struct stm32_cryp *cryp, u32 *src,
          unsigned int n)
{
 scatterwalk_advance(&cryp->in_walk, n);

 if (unlikely(cryp->in_sg->length == _walked_in)) {
  cryp->in_sg = sg_next(cryp->in_sg);
  if (cryp->in_sg) {
   scatterwalk_start(&cryp->in_walk, cryp->in_sg);
   return (sg_virt(cryp->in_sg) + _walked_in);
  }
 }

 return (u32 *)((u8 *)src + n);
}
