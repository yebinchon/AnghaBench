
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vop_reg {int offset; int shift; int mask; } ;
struct vop {int dummy; } ;


 int vop_readl (struct vop*,int) ;

__attribute__((used)) static inline uint32_t vop_read_reg(struct vop *vop, uint32_t base,
        const struct vop_reg *reg)
{
 return (vop_readl(vop, base + reg->offset) >> reg->shift) & reg->mask;
}
