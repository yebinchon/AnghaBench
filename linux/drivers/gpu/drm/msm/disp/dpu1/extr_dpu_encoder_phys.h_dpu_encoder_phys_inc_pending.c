
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {int pending_kickoff_cnt; int pending_ctlstart_cnt; } ;


 int atomic_inc_return (int *) ;

__attribute__((used)) static inline int dpu_encoder_phys_inc_pending(struct dpu_encoder_phys *phys)
{
 atomic_inc_return(&phys->pending_ctlstart_cnt);
 return atomic_inc_return(&phys->pending_kickoff_cnt);
}
