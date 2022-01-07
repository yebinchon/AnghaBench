
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LM93_RAMP_MAX ;
 int LM93_RAMP_MIN ;
 int clamp_val (int,int ,int ) ;

__attribute__((used)) static u8 LM93_RAMP_TO_REG(int ramp)
{
 ramp = clamp_val(ramp, LM93_RAMP_MIN, LM93_RAMP_MAX);
 return (u8)((ramp + 2) / 5);
}
