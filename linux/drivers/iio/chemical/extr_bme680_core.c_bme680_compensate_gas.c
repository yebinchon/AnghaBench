
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
typedef unsigned int u32 ;
typedef int u16 ;
struct bme680_calib {scalar_t__ range_sw_err; } ;
struct bme680_data {struct bme680_calib bme680; } ;
typedef int s64 ;


 unsigned int div64_s64 (int,int) ;

__attribute__((used)) static u32 bme680_compensate_gas(struct bme680_data *data, u16 gas_res_adc,
     u8 gas_range)
{
 struct bme680_calib *calib = &data->bme680;
 s64 var1;
 u64 var2;
 s64 var3;
 u32 calc_gas_res;


 const u32 lookupTable[16] = {2147483647u, 2147483647u,
    2147483647u, 2147483647u, 2147483647u,
    2126008810u, 2147483647u, 2130303777u,
    2147483647u, 2147483647u, 2143188679u,
    2136746228u, 2147483647u, 2126008810u,
    2147483647u, 2147483647u};

 var1 = ((1340 + (5 * (s64) calib->range_sw_err)) *
   ((s64) lookupTable[gas_range])) >> 16;
 var2 = ((gas_res_adc << 15) - 16777216) + var1;
 var3 = ((125000 << (15 - gas_range)) * var1) >> 9;
 var3 += (var2 >> 1);
 calc_gas_res = div64_s64(var3, (s64) var2);

 return calc_gas_res;
}
