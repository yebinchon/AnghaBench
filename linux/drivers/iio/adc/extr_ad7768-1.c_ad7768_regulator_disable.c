
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7768_state {int vref; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void ad7768_regulator_disable(void *data)
{
 struct ad7768_state *st = data;

 regulator_disable(st->vref);
}
