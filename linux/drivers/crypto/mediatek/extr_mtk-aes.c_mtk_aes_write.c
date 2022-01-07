
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_cryp {scalar_t__ base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mtk_aes_write(struct mtk_cryp *cryp,
     u32 offset, u32 value)
{
 writel_relaxed(value, cryp->base + offset);
}
