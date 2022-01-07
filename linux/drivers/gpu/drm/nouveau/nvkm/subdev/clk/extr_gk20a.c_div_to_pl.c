
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int*) ;
 int* _pl_to_div ;

__attribute__((used)) static u32 div_to_pl(u32 div)
{
 u32 pl;

 for (pl = 0; pl < ARRAY_SIZE(_pl_to_div) - 1; pl++) {
  if (_pl_to_div[pl] >= div)
   return pl;
 }

 return ARRAY_SIZE(_pl_to_div) - 1;
}
