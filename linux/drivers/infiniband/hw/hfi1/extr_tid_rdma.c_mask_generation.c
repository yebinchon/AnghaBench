
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENERATION_MASK ;

__attribute__((used)) static u32 mask_generation(u32 a)
{
 return a & GENERATION_MASK;
}
