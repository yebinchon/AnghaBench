
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int host1x_uclass_wait_syncpt_base_base_indx_f (unsigned int) ;
 int host1x_uclass_wait_syncpt_base_indx_f (unsigned int) ;
 int host1x_uclass_wait_syncpt_base_offset_f (unsigned int) ;

__attribute__((used)) static inline u32 host1x_class_host_wait_syncpt_base(
 unsigned indx, unsigned base_indx, unsigned offset)
{
 return host1x_uclass_wait_syncpt_base_indx_f(indx)
  | host1x_uclass_wait_syncpt_base_base_indx_f(base_indx)
  | host1x_uclass_wait_syncpt_base_offset_f(offset);
}
