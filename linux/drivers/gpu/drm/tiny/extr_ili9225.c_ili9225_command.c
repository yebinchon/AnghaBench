
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mipi_dbi {int dummy; } ;


 int mipi_dbi_command_buf (struct mipi_dbi*,int,int*,int) ;

__attribute__((used)) static inline int ili9225_command(struct mipi_dbi *dbi, u8 cmd, u16 data)
{
 u8 par[2] = { data >> 8, data & 0xff };

 return mipi_dbi_command_buf(dbi, cmd, par, 2);
}
