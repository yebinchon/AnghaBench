
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t DIV_ROUND_UP (int,int) ;
 int TWLO_USEC ;
 int USEC_PER_SEC ;

__attribute__((used)) static inline size_t atmel_i2c_wake_token_sz(u32 bus_clk_rate)
{
 u32 no_of_bits = DIV_ROUND_UP(TWLO_USEC * bus_clk_rate, USEC_PER_SEC);


 return DIV_ROUND_UP(no_of_bits, 8);
}
