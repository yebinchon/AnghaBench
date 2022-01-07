
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_desc_hw {int m2; int m3; int m0; int m1; } ;
typedef int __le64 ;


 int pr_err (char*) ;

__attribute__((used)) static __le64 *xgene_dma_lookup_ext8(struct xgene_dma_desc_hw *desc, int idx)
{
 switch (idx) {
 case 0:
  return &desc->m1;
 case 1:
  return &desc->m0;
 case 2:
  return &desc->m3;
 case 3:
  return &desc->m2;
 default:
  pr_err("Invalid dma descriptor index\n");
 }

 return ((void*)0);
}
