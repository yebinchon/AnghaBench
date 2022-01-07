
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_qplib_pkey_tbl {int max; scalar_t__ active; int tbl; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void bnxt_qplib_cleanup_pkey_tbl(struct bnxt_qplib_pkey_tbl *pkey_tbl)
{
 memset(pkey_tbl->tbl, 0, sizeof(u16) * pkey_tbl->max);
 pkey_tbl->active = 0;
}
