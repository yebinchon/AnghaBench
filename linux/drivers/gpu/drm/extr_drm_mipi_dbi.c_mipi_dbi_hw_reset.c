
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dbi {int reset; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

void mipi_dbi_hw_reset(struct mipi_dbi *dbi)
{
 if (!dbi->reset)
  return;

 gpiod_set_value_cansleep(dbi->reset, 0);
 usleep_range(20, 1000);
 gpiod_set_value_cansleep(dbi->reset, 1);
 msleep(120);
}
