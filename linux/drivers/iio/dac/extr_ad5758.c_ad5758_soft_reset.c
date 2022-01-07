
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int dummy; } ;


 int AD5758_KEY ;
 int AD5758_KEY_CODE_RESET_1 ;
 int AD5758_KEY_CODE_RESET_2 ;
 int ad5758_spi_reg_write (struct ad5758_state*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ad5758_soft_reset(struct ad5758_state *st)
{
 int ret;

 ret = ad5758_spi_reg_write(st, AD5758_KEY, AD5758_KEY_CODE_RESET_1);
 if (ret < 0)
  return ret;

 ret = ad5758_spi_reg_write(st, AD5758_KEY, AD5758_KEY_CODE_RESET_2);


 usleep_range(100, 1000);

 return ret;
}
