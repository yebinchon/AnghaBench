
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s6sy761_data {int regulators; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; } ;


 int ARRAY_SIZE (int ) ;
 int disable_irq (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void s6sy761_power_off(void *data)
{
 struct s6sy761_data *sdata = data;

 disable_irq(sdata->client->irq);
 regulator_bulk_disable(ARRAY_SIZE(sdata->regulators),
      sdata->regulators);
}
