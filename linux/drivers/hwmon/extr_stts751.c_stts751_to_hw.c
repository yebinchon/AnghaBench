
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static s32 stts751_to_hw(int val)
{
 return DIV_ROUND_CLOSEST(val, 125) * 32;
}
