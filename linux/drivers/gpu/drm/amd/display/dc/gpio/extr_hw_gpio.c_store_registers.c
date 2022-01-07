
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int en; int a; int mask; } ;
struct hw_gpio {TYPE_1__ store; } ;


 int A ;
 int A_reg ;
 int EN ;
 int EN_reg ;
 int MASK ;
 int MASK_reg ;
 int REG_GET (int ,int ,int *) ;

__attribute__((used)) static void store_registers(
 struct hw_gpio *gpio)
{
 REG_GET(MASK_reg, MASK, &gpio->store.mask);
 REG_GET(A_reg, A, &gpio->store.a);
 REG_GET(EN_reg, EN, &gpio->store.en);

}
