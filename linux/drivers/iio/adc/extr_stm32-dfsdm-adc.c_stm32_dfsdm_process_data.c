
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_filter_osr {int max; int lshift; } ;
struct stm32_dfsdm_filter {size_t fast; struct stm32_dfsdm_filter_osr* flo; } ;
struct stm32_dfsdm_adc {size_t fl_id; unsigned int nconv; TYPE_1__* dfsdm; } ;
typedef int s32 ;
struct TYPE_2__ {struct stm32_dfsdm_filter* fl_list; } ;



__attribute__((used)) static inline void stm32_dfsdm_process_data(struct stm32_dfsdm_adc *adc,
         s32 *buffer)
{
 struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
 struct stm32_dfsdm_filter_osr *flo = &fl->flo[fl->fast];
 unsigned int i = adc->nconv;
 s32 *ptr = buffer;

 while (i--) {

  *ptr &= 0xFFFFFF00;

  if (*ptr > flo->max)
   *ptr -= 1;




  *ptr <<= flo->lshift;

  ptr++;
 }
}
