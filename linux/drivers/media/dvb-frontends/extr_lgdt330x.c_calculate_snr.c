
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ intlog10 (scalar_t__) ;

__attribute__((used)) static u32 calculate_snr(u32 mse, u32 c)
{
 if (mse == 0)
  return 0;

 mse = intlog10(mse);
 if (mse > c) {





  return 0;
 }
 return 10 * (c - mse);
}
