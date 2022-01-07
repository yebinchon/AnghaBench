
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ abs (int) ;

__attribute__((used)) static unsigned int tilcdc_pclk_diff(unsigned long rate,
         unsigned long real_rate)
{
 int r = rate / 100, rr = real_rate / 100;

 return (unsigned int)(abs(((rr - r) * 100) / r));
}
