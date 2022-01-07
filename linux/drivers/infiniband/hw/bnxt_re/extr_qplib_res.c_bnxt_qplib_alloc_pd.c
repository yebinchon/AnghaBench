
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnxt_qplib_pd_tbl {scalar_t__ max; int tbl; } ;
struct bnxt_qplib_pd {scalar_t__ id; } ;


 int ENOMEM ;
 int clear_bit (scalar_t__,int ) ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;

int bnxt_qplib_alloc_pd(struct bnxt_qplib_pd_tbl *pdt, struct bnxt_qplib_pd *pd)
{
 u32 bit_num;

 bit_num = find_first_bit(pdt->tbl, pdt->max);
 if (bit_num == pdt->max)
  return -ENOMEM;


 clear_bit(bit_num, pdt->tbl);
 pd->id = bit_num;
 return 0;
}
