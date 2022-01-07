
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * via_lut ;

__attribute__((used)) static inline u8 TEMP_TO_REG(long val)
{
 return via_lut[val <= -50000 ? 0 : val >= 110000 ? 160 :
        (val < 0 ? val - 500 : val + 500) / 1000 + 50];
}
