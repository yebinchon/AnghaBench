
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7606_state {int reg; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void ad7606_regulator_disable(void *data)
{
 struct ad7606_state *st = data;

 regulator_disable(st->reg);
}
