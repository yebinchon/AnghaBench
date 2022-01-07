
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dss_reg {scalar_t__ idx; } ;
struct dss_device {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void dss_write_reg(struct dss_device *dss,
     const struct dss_reg idx, u32 val)
{
 __raw_writel(val, dss->base + idx.idx);
}
