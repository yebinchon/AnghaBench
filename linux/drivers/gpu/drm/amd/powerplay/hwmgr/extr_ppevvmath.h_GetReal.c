
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int full; } ;
typedef TYPE_1__ fInt ;


 int SHIFT_AMOUNT ;

__attribute__((used)) static int GetReal (fInt A)
{
 return (A.full >> SHIFT_AMOUNT);
}
