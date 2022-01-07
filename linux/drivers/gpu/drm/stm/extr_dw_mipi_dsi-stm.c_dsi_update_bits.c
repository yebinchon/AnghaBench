
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi_stm {int dummy; } ;


 int dsi_read (struct dw_mipi_dsi_stm*,int) ;
 int dsi_write (struct dw_mipi_dsi_stm*,int,int) ;

__attribute__((used)) static inline void dsi_update_bits(struct dw_mipi_dsi_stm *dsi, u32 reg,
       u32 mask, u32 val)
{
 dsi_write(dsi, reg, (dsi_read(dsi, reg) & ~mask) | val);
}
