
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BREAK_TO_DEBUGGER () ;
 int GPIO_ENUM_UNKNOWN ;

__attribute__((used)) static uint32_t index_from_vector(
 uint32_t vector)
{
 uint32_t result = 0;
 uint32_t mask = 1;

 do {
  if (vector == mask)
   return result;

  ++result;
  mask <<= 1;
 } while (mask);

 BREAK_TO_DEBUGGER();

 return GPIO_ENUM_UNKNOWN;
}
