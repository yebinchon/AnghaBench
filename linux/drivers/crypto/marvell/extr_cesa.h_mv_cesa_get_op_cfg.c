
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int config; } ;
struct mv_cesa_op_ctx {TYPE_1__ desc; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 mv_cesa_get_op_cfg(const struct mv_cesa_op_ctx *op)
{
 return le32_to_cpu(op->desc.config);
}
