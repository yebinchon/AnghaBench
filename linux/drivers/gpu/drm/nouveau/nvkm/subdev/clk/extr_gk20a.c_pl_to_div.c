
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int*) ;
 int* _pl_to_div ;

__attribute__((used)) static u32 pl_to_div(u32 pl)
{
 if (pl >= ARRAY_SIZE(_pl_to_div))
  return 1;

 return _pl_to_div[pl];
}
