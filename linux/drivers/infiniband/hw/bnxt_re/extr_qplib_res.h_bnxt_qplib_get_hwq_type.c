
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnxt_qplib_res {int cctx; } ;


 int HWQ_TYPE_L2_CMPL ;
 int HWQ_TYPE_QUEUE ;
 scalar_t__ bnxt_qplib_is_chip_gen_p5 (int ) ;

__attribute__((used)) static inline u8 bnxt_qplib_get_hwq_type(struct bnxt_qplib_res *res)
{
 return bnxt_qplib_is_chip_gen_p5(res->cctx) ?
     HWQ_TYPE_QUEUE : HWQ_TYPE_L2_CMPL;
}
