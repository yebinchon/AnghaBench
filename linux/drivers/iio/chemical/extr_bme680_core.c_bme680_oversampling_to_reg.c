
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ilog2 (scalar_t__) ;

__attribute__((used)) static u8 bme680_oversampling_to_reg(u8 val)
{
 return ilog2(val) + 1;
}
