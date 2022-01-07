
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int full; } ;
typedef TYPE_1__ fInt ;


 int MAX ;
 int SHIFT_AMOUNT ;

__attribute__((used)) static fInt Convert_ULONG_ToFraction(uint32_t X)
{
 fInt temp;

 if (X <= MAX)
  temp.full = (X << SHIFT_AMOUNT);
 else
  temp.full = 0;

 return temp;
}
