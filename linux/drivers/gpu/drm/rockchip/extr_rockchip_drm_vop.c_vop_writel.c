
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vop {int* regsbak; scalar_t__ regs; } ;


 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void vop_writel(struct vop *vop, uint32_t offset, uint32_t v)
{
 writel(v, vop->regs + offset);
 vop->regsbak[offset >> 2] = v;
}
