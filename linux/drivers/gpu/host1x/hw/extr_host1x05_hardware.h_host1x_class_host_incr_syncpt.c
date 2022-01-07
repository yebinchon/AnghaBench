
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int host1x_uclass_incr_syncpt_cond_f (unsigned int) ;
 int host1x_uclass_incr_syncpt_indx_f (unsigned int) ;

__attribute__((used)) static inline u32 host1x_class_host_incr_syncpt(
 unsigned cond, unsigned indx)
{
 return host1x_uclass_incr_syncpt_cond_f(cond)
  | host1x_uclass_incr_syncpt_indx_f(indx);
}
