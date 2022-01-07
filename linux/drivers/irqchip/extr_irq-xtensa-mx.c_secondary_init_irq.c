
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCHAL_INTTYPE_MASK_EXTERN_EDGE ;
 int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ;
 int __this_cpu_write (int ,int) ;
 int cached_irq_mask ;
 int intenable ;
 int xtensa_set_sr (int,int ) ;

void secondary_init_irq(void)
{
 __this_cpu_write(cached_irq_mask,
   XCHAL_INTTYPE_MASK_EXTERN_EDGE |
   XCHAL_INTTYPE_MASK_EXTERN_LEVEL);
 xtensa_set_sr(XCHAL_INTTYPE_MASK_EXTERN_EDGE |
   XCHAL_INTTYPE_MASK_EXTERN_LEVEL, intenable);
}
