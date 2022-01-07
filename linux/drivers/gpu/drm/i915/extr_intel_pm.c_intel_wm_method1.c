
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int DIV_ROUND_UP_ULL (unsigned int,int) ;
 unsigned int mul_u32_u32 (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int intel_wm_method1(unsigned int pixel_rate,
         unsigned int cpp,
         unsigned int latency)
{
 u64 ret;

 ret = mul_u32_u32(pixel_rate, cpp * latency);
 ret = DIV_ROUND_UP_ULL(ret, 10000);

 return ret;
}
