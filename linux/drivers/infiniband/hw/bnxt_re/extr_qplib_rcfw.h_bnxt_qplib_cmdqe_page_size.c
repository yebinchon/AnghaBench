
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAGE_SIZE ;
 int bnxt_qplib_cmdqe_npages (int) ;

__attribute__((used)) static inline u32 bnxt_qplib_cmdqe_page_size(u32 depth)
{
 return (bnxt_qplib_cmdqe_npages(depth) * PAGE_SIZE);
}
