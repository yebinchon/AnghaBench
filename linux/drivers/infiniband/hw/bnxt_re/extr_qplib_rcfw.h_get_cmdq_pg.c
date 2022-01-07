
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bnxt_qplib_cmdqe_cnt_per_pg (int) ;
 int bnxt_qplib_max_cmdq_idx_per_pg (int) ;

__attribute__((used)) static inline u32 get_cmdq_pg(u32 val, u32 depth)
{
 return (val & ~(bnxt_qplib_max_cmdq_idx_per_pg(depth))) /
  (bnxt_qplib_cmdqe_cnt_per_pg(depth));
}
