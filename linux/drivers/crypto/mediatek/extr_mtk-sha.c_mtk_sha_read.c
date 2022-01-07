
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_cryp {scalar_t__ base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 mtk_sha_read(struct mtk_cryp *cryp, u32 offset)
{
 return readl_relaxed(cryp->base + offset);
}
