
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int regmap; } ;


 int DP0_VIDMNGEN1 ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int tc_stream_clock_calc(struct tc_data *tc)
{
 return regmap_write(tc->regmap, DP0_VIDMNGEN1, 32768);
}
