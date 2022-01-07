
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int regmap; } ;


 int PLLEN ;
 int PLLUPDATE ;
 int regmap_write (int ,unsigned int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tc_pllupdate(struct tc_data *tc, unsigned int pllctrl)
{
 int ret;

 ret = regmap_write(tc->regmap, pllctrl, PLLUPDATE | PLLEN);
 if (ret)
  return ret;


 usleep_range(3000, 6000);

 return 0;
}
