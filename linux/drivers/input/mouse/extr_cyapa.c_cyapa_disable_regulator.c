
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {int vcc; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void cyapa_disable_regulator(void *data)
{
 struct cyapa *cyapa = data;

 regulator_disable(cyapa->vcc);
}
