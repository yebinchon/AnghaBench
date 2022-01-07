
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_chip_ctx {scalar_t__ chip_num; } ;


 scalar_t__ CHIP_NUM_57500 ;

__attribute__((used)) static inline bool bnxt_qplib_is_chip_gen_p5(struct bnxt_qplib_chip_ctx *cctx)
{
 return (cctx->chip_num == CHIP_NUM_57500);
}
