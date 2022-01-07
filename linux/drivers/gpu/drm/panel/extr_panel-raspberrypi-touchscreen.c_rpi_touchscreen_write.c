
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rpi_touchscreen {int dsi; } ;
typedef int msg ;


 int mipi_dsi_generic_write (int ,int*,int) ;

__attribute__((used)) static int rpi_touchscreen_write(struct rpi_touchscreen *ts, u16 reg, u32 val)
{
 u8 msg[] = {
  reg,
  reg >> 8,
  val,
  val >> 8,
  val >> 16,
  val >> 24,
 };

 mipi_dsi_generic_write(ts->dsi, msg, sizeof(msg));

 return 0;
}
