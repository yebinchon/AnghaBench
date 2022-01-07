
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LOG2_E_100X ;
 int intlog2 (int) ;

__attribute__((used)) static uint32_t sony_log(uint32_t x)
{
 return (((10000>>8)*(intlog2(x)>>16) + LOG2_E_100X/2)/LOG2_E_100X);
}
