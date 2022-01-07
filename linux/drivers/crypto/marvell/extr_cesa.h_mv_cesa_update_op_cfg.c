
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config; } ;
struct mv_cesa_op_ctx {TYPE_1__ desc; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void mv_cesa_update_op_cfg(struct mv_cesa_op_ctx *op,
      u32 cfg, u32 mask)
{
 op->desc.config &= cpu_to_le32(~mask);
 op->desc.config |= cpu_to_le32(cfg);
}
