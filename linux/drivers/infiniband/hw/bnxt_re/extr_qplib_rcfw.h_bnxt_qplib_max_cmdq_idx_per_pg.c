
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ bnxt_qplib_cmdqe_cnt_per_pg (scalar_t__) ;

__attribute__((used)) static inline u32 bnxt_qplib_max_cmdq_idx_per_pg(u32 depth)
{
 return (bnxt_qplib_cmdqe_cnt_per_pg(depth) - 1);
}
