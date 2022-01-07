
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct dispc_device {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void dispc_write_reg(struct dispc_device *dispc, u16 idx, u32 val)
{
 __raw_writel(val, dispc->base + idx);
}
