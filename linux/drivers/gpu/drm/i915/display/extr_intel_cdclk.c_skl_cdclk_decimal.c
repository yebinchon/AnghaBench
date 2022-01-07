
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static int skl_cdclk_decimal(int cdclk)
{
 return DIV_ROUND_CLOSEST(cdclk - 1000, 500);
}
