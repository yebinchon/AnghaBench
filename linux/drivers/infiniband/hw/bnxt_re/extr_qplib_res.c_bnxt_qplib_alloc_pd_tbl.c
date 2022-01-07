
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnxt_qplib_res {int dummy; } ;
struct bnxt_qplib_pd_tbl {int max; scalar_t__ tbl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kmalloc (int,int ) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int bnxt_qplib_alloc_pd_tbl(struct bnxt_qplib_res *res,
       struct bnxt_qplib_pd_tbl *pdt,
       u32 max)
{
 u32 bytes;

 bytes = max >> 3;
 if (!bytes)
  bytes = 1;
 pdt->tbl = kmalloc(bytes, GFP_KERNEL);
 if (!pdt->tbl)
  return -ENOMEM;

 pdt->max = max;
 memset((u8 *)pdt->tbl, 0xFF, bytes);

 return 0;
}
