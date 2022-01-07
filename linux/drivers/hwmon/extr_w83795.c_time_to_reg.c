
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int clamp_val (unsigned long,int ,int) ;

__attribute__((used)) static inline u8 time_to_reg(unsigned long val)
{
 return clamp_val((val + 50) / 100, 0, 0xff);
}
