
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (unsigned int,int) ;
 unsigned int intel_wm_method1 (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int ilk_wm_method1(unsigned int pixel_rate,
       unsigned int cpp,
       unsigned int latency)
{
 unsigned int ret;

 ret = intel_wm_method1(pixel_rate, cpp, latency);
 ret = DIV_ROUND_UP(ret, 64) + 2;

 return ret;
}
