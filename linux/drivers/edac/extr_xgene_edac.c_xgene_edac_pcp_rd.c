
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_edac {scalar_t__ pcp_csr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static void xgene_edac_pcp_rd(struct xgene_edac *edac, u32 reg, u32 *val)
{
 *val = readl(edac->pcp_csr + reg);
}
