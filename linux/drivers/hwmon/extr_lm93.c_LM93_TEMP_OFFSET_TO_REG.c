
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LM93_TEMP_OFFSET_MAX0 ;
 int LM93_TEMP_OFFSET_MAX1 ;
 int LM93_TEMP_OFFSET_MIN ;
 int clamp_val (int,int ,int ) ;

__attribute__((used)) static u8 LM93_TEMP_OFFSET_TO_REG(int off, int mode)
{
 int factor = mode ? 5 : 10;

 off = clamp_val(off, LM93_TEMP_OFFSET_MIN,
  mode ? LM93_TEMP_OFFSET_MAX1 : LM93_TEMP_OFFSET_MAX0);
 return (u8)((off + factor/2) / factor);
}
