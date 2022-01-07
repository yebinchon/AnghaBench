
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int host1x_class_host_incr_syncpt (unsigned int,unsigned int) ;
 int host1x_opcode_imm (int ,int ) ;
 int host1x_uclass_incr_syncpt_r () ;

__attribute__((used)) static inline u32 host1x_opcode_imm_incr_syncpt(unsigned cond, unsigned indx)
{
 return host1x_opcode_imm(host1x_uclass_incr_syncpt_r(),
  host1x_class_host_incr_syncpt(cond, indx));
}
