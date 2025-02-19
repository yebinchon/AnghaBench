
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_edac {int lock; scalar_t__ pcp_csr; } ;


 scalar_t__ readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void xgene_edac_pcp_setbits(struct xgene_edac *edac, u32 reg,
       u32 bits_mask)
{
 u32 val;

 spin_lock(&edac->lock);
 val = readl(edac->pcp_csr + reg);
 val |= bits_mask;
 writel(val, edac->pcp_csr + reg);
 spin_unlock(&edac->lock);
}
