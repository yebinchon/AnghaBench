
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BNXT_QPLIB_CMDQE_BYTES (int) ;
 int PAGE_SIZE ;

__attribute__((used)) static inline u32 bnxt_qplib_cmdqe_npages(u32 depth)
{
 u32 npages;

 npages = BNXT_QPLIB_CMDQE_BYTES(depth) / PAGE_SIZE;
 if (BNXT_QPLIB_CMDQE_BYTES(depth) % PAGE_SIZE)
  npages++;
 return npages;
}
