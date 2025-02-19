
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 unsigned int intel_wm_method2 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int vlv_wm_method2(unsigned int pixel_rate,
       unsigned int htotal,
       unsigned int width,
       unsigned int cpp,
       unsigned int latency)
{
 unsigned int ret;

 ret = intel_wm_method2(pixel_rate, htotal,
          width, cpp, latency);
 ret = DIV_ROUND_UP(ret, 64);

 return ret;
}
