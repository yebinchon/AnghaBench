
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BNXT_QPLIB_CMDQE_UNITS ;
 int bnxt_qplib_cmdqe_page_size (int) ;

__attribute__((used)) static inline u32 bnxt_qplib_cmdqe_cnt_per_pg(u32 depth)
{
 return (bnxt_qplib_cmdqe_page_size(depth) /
   BNXT_QPLIB_CMDQE_UNITS);
}
