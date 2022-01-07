
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dw_mipi_dsi {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dsi_write(struct dw_mipi_dsi *dsi, u32 reg, u32 val)
{
 writel(val, dsi->base + reg);
}
