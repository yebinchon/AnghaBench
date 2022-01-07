
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enc_len; } ;
struct mv_cesa_op_ctx {TYPE_1__ desc; } ;


 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void mv_cesa_set_crypt_op_len(struct mv_cesa_op_ctx *op, int len)
{
 op->desc.enc_len = cpu_to_le32(len);
}
