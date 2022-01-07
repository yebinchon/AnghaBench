
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st7701 {int dsi; } ;


 int mipi_dsi_dcs_write_buffer (int ,void const*,size_t) ;

__attribute__((used)) static inline int st7701_dsi_write(struct st7701 *st7701, const void *seq,
       size_t len)
{
 return mipi_dsi_dcs_write_buffer(st7701->dsi, seq, len);
}
