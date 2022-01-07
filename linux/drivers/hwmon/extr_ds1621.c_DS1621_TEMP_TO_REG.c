
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef long u16 ;


 int DIV_ROUND_CLOSEST (long,int) ;
 int DS1621_TEMP_MAX ;
 int DS1621_TEMP_MIN ;
 long clamp_val (long,int ,int ) ;

__attribute__((used)) static inline u16 DS1621_TEMP_TO_REG(long temp, u8 zbits)
{
 temp = clamp_val(temp, DS1621_TEMP_MIN, DS1621_TEMP_MAX);
 temp = DIV_ROUND_CLOSEST(temp * (1 << (8 - zbits)), 1000) << zbits;
 return temp;
}
