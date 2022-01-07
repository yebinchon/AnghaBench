
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int supplies; int num_supplies; } ;


 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void adv7511_uninit_regulators(struct adv7511 *adv)
{
 regulator_bulk_disable(adv->num_supplies, adv->supplies);
}
